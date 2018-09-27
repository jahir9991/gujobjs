import * as winston from "winston";
import * as path from "path";

// logger.........................
const configs = {
  levels: {
    error: 0,
    debug: 1,
    warn: 2,
    data: 3,
    info: 4,
    verbose: 5,
    silly: 6
  },
  colors: {
    error: "red",
    debug: "blue",
    warn: "yellow",
    data: "grey",
    info: "green",
    verbose: "cyan",
    silly: "magenta"
  }
};

winston.emitErrs = true;

const logger = new winston.Logger({
  transports: [
    new winston.transports.File({
      filename: path.join(__dirname, "../../logs/error.log"),
      handleExceptions: true,
      json: true,
      maxsize: 5242880, // 5MB
      maxFiles: 5,
      colorize: false,
      timestamp: true
    }),
    new winston.transports.Console({
      handleExceptions: true,
      json: false,
      colorize: true,
      timestamp: true,
      prettyPrint: true
    })
    // new winston.transports.Logentries({
    //   token: config.get('LOGENTRIES.TOKEN'),
    //   handleExceptions: true,
    //   json: false,
    //   colorize: true,
    //   timestamp :true,
    //   prettyPrint: true,
    // })
  ],
  levels: configs.levels,
  colors: configs.colors,
  exitOnError: false
});

const logPlaceHolder = {
  indexSuccessPlaceHolder: (data, pagination, controllerName) => ({
    success: true,
    total: data.count,
    limit: pagination.limit,
    skip: pagination.skip,
    page: pagination.page,
    message: `Get All ${controllerName} with pagination`,
    data: data.rows
  }),
  indexErrorPlaceHolder: (err, controllerName) => ({
    success: false,
    message: `Error in Get All ${controllerName} with search`,
    error: err
  }),
  showSuccessPlaceHolder: (data, controllerName) => ({
    success: true,
    message: `read single ${controllerName}`,
    data
  }),
  showErrorPlaceHolder: (err, controllerName) => ({
    success: false,
    message: `error in read single ${controllerName}`,
    error: err
  }),
  updateSuccessPlaceHolder: (data, controllerName) => ({
    success: true,
    message: `update  single ${controllerName}`,
    data
  }),
  updateErrorPlaceHolder: (err, controllerName) => ({
    success: false,
    message: `error in update single ${controllerName}`,
    error: err
  }),
  deleteSuccessPlaceHolder: controllerName => ({
    success: true,
    message: `delete single ${controllerName}`
  }),
  deleteErrorPlaceHolder: (err, controllerName) => ({
    success: false,
    message: `error in delete single ${controllerName}`,
    error: err
  }),
  initLogPlaceHolder: (req, controllarName, callerName = null) => {
    logger.info(">>>>>>>Controller log START <<<<<<<<<<<");
    logger.info(`request for ${controllarName}--${callerName}`);
    logger.debug("query =>", req.query);
    logger.debug("params =>", req.params);
    logger.debug("body =>", req.body);
    logger.debug(">>>>>>>Controller log END <<<<<<<<<<<");
  },
  middlewareLog: (req, _api) => {
    logger.debug(">>>>>>>Middleware log START <<<<<<<<<<<");
    logger.debug(`a ${req.method} request in ${_api} route.`);
    logger.debug("query ========>", req.query);
    logger.debug("params =======>", req.params);
    logger.debug("body =========>", req.body);
    logger.debug(">>>>>>>Middleware log END <<<<<<<<<<<");
  }
};

// .......................pagination...............................
const pagination = reqBody => {
  let limit = null;
  let skip = 0;
  let page = 1;

  if (reqBody.limit !== "all") {
    limit = Number(reqBody.limit) || 10;
    skip =
      Number(
        reqBody.page && reqBody.page > 0 ? limit * (reqBody.page - 1) : 0
      ) || 0;
    page = Number(reqBody.page) || 1;
  }

  return {
    limit,
    page,
    skip
  };
};

// ......................baseFilter...................................
const baseFilter = async (reqBody, Model, localWhere) => {
  const where: any = {};
  const modelAttributes = Object.keys(Model.rawAttributes);

  modelAttributes.map(attr => {
    if (reqBody[attr]) {
      where[attr] = reqBody[attr];
    }
  });
  if (reqBody.created_at) {
    where.created_at = {
      $gte: new Date(reqBody.created_at),
      $lt: new Date(reqBody.created_at).setDate(
        new Date(reqBody.created_at).getDate() + 1
      )
    };
  }
  if (reqBody.updated_at) {
    where.updated_at = {
      $gte: new Date(reqBody.updated_at),
      $lt: new Date(reqBody.updated_at).setDate(
        new Date(reqBody.updated_at).getDate() + 1
      )
    };
  }

  if (localWhere.$or && reqBody.search_term) {
    where.$or = {};
    localWhere.$or.map(element => {
      where.$or[element] = { $like: `%${reqBody.search_term}%` };
    });
  }
  if (localWhere.$and && reqBody.search_term) {
    console.log(localWhere.$or);
    where.$and = {};
    localWhere.$and.map(element => {
      where.$and[element] = { $like: `%${reqBody.search_term}%` };
    });
  }
  return where;
};

// ..............getFileName
const getFileName = (filename, dirname) =>
  filename.substring(dirname.length + 1, filename.lastIndexOf("."));

// ............RestApiPlaceholder..............................
const restApiPlaceHolder = (route, controller, routeName) => {
  const arr = [];

  if (controller.index) {
    arr.push(route.route(`/${routeName}`).get(controller.index));
  }
  if (controller.show) {
    arr.push(route.route(`/${routeName}/:_id`).get(controller.show));
  }

  if (controller.create) {
    arr.push(route.route(`/${routeName}`).post(controller.create));
  }
  if (controller.update) {
    arr.push(route.route(`/${routeName}/:_id`).put(controller.update));
  }
  if (controller.destroy) {
    arr.push(route.route(`/${routeName}/:_id`).delete(controller.destroy));
  }

  return arr;
};

// ...................
const SequelizeValues = require("sequelize-values")();

// ..............GuId.........................................
const guid = () => {
  function s4() {
    return Math.floor((1 + Math.random()) * 0x10000)
      .toString(16)
      .substring(1);
  }
  return (
    s4() +
    s4() +
    "-" +
    s4() +
    "-" +
    s4() +
    "-" +
    s4() +
    "-" +
    s4() +
    s4() +
    s4()
  );
};

// ...............HELPER.....................................
interface HelperType {
  logger?: any;
  logPlaceHolder: {
    indexSuccessPlaceHolder: any;
    indexErrorPlaceHolder: any;
    showSuccessPlaceHolder: any;
    showErrorPlaceHolder: any;
    updateSuccessPlaceHolder: any;
    updateErrorPlaceHolder;
    deleteSuccessPlaceHolder;
    deleteErrorPlaceHolder;
    initLogPlaceHolder;
    middlewareLog;
  };
  pagination;
  baseFilter;
  getFileName;
  restApiPlaceHolder;
  SequelizeValues;
  guid;
}

export const Helper: HelperType = {
  logger,
  logPlaceHolder,
  pagination,
  baseFilter,
  getFileName,
  restApiPlaceHolder,
  SequelizeValues,
  guid
};
