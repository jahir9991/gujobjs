import { Helper } from '../libs';
// import your model
import { UserInfo as Model } from '../models/MYSQL';
import { BaseController } from '../libs/baseController';


const controllerName = Helper.getFileName(__filename, __dirname);

// change the controller name
export const userInfoController = BaseController(controllerName, Model, {});
