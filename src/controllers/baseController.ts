import { Helper, mysqlConnect } from "../libs";
import * as moment from "moment";


export const BaseController: any = (
  controller_Name,
  Model,
  option: any = {}
) => {
  let controllerName = controller_Name.split("Controller")[0];

  const index = async (req: any, res: any) => {
    try {
      Helper.logPlaceHolder.initLogPlaceHolder(req, controllerName, "index");

      /* Pagination........START..........*/
      const pagination = Helper.pagination(req.query);

      /* Pagination........END..........*/

      // /* WHERE condition .......START.....................*/
      let where = {};
      let include = [];

      if (option.index && option.index.where) {
        where = {
          ...where,
          ...option.index.where
        };
      }

      where = await Helper.baseFilter(req.query, Model, where);

      if (option.index && option.index.include) {
        include = [...include, ...option.index.include];
      }

      const data = await Model.findAndCountAll({
        where,
        include,
        order: [["id", "DESC"]],
        limit: pagination.limit,
        offset: pagination.skip
      });

      res
        .status(200)
        .json(
          Helper.logPlaceHolder.indexSuccessPlaceHolder(
            data,
            pagination,
            controllerName
          )
        );
    } catch (err) {
      res.status(400).json({
        success: false,
        message: `Error in Get All ${controllerName} with search`,
        error: err
      });
    }
  };
  const show = async (req: any, res: any) => {
    try {
      Helper.logPlaceHolder.initLogPlaceHolder(
        req.query,
        controllerName,
        "show"
      );

      let include = [];

      if (option.show && option.show.include) {
        include = [...include, ...option.show.include];
      }
      const data = await Model.findOne({
        where: { id: req.params._id },
        include
      });

      res
        .status(200)
        .json(
          Helper.logPlaceHolder.showSuccessPlaceHolder(data, controllerName)
        );
    } catch (err) {
      res.status(400).json({
        error: err,
        message: `error in read single ${controllerName} `,
        success: false
      });
    }
  };

  /* .....................edit......................................*/
  const update = async (req, res, next) => {
    try {
      Helper.logPlaceHolder.initLogPlaceHolder(
        req.query,
        controllerName,
        "update"
      );
      const data = await Model.update(req.body, {
        where: { id: req.params._id }
      });

      if (data[0]) {
        let include = [];

        if (option.update && option.update.include) {
          include = [...include, ...option.update.include];
        }

        const newData = await Model.findOne({
          where: { id: req.params._id },
          include
        });

        res
          .status(200)
          .json(
            Helper.logPlaceHolder.updateSuccessPlaceHolder(
              newData,
              controllerName
            )
          );
      } else {
        res.status(200).json({
          success: false,
          message: `something went wrong in update single ${controllerName}`
        });
      }
    } catch (err) {
      res.status(400).json({
        success: false,
        message: `error from  edit single ${controllerName}`,
        error: err
      });
    }
  };

  /* .....................delete......................................*/
  const destroy = async (req, res, next) => {
    try {
      Helper.logPlaceHolder.initLogPlaceHolder(req.query, controllerName);

      const data = await Model.destroy({ where: { id: req.params._id } });

      if (data) {
        res
          .status(200)
          .json(Helper.logPlaceHolder.deleteSuccessPlaceHolder(controllerName));
      } else {
        res.status(400).json({
          success: false,
          message: `something went wrong in delete single ${controllerName}`
        });
      }
    } catch (err) {
      res.status(400).json({
        success: false,
        message: `error from  delete single ${controllerName} `,
        error: err
      });
    }
  };

  /* .....................post......................................*/
  const create = async (req: any, res: any) => {
    let transaction;
    transaction = await mysqlConnect.transaction();
    try {
      Helper.logPlaceHolder.initLogPlaceHolder(
        req.query,
        controllerName,
        "create"
      );

      let data = await Model.create(req.body, { transaction });

      let include = [];
      transaction.commit();

      if (option.create && option.create.include) {
        include = [...include, ...option.create.include];

        data = await Model.findOne({
          where: { id: data.id },
          include
        });
      }

      res.status(200).json({
        success: true,
        message: `from  create single ${controllerName} `,
        data
      });
    } catch (err) {
      transaction.rollback();

      res.status(400).json({
        success: false,
        message: `error from  create single ${controllerName}`,
        error: err
      });
    }
  };

  return {
    create,
    destroy,
    index,
    show,
    update
  };
};