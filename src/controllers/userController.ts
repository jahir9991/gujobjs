import { Helper } from '../libs';
import { BaseController } from '../libs/baseController';
import { User as Model, UserInfo } from '../models/MYSQL';

const controllerName = Helper.getFileName(__filename, __dirname);

export const userController = BaseController(controllerName, Model, {
	index: {
		include: [
			{
				model: UserInfo,
				as: 'userInfo',
				required: false
			}
		]
	}
});
