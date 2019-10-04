import * as express from 'express';
import { Helper } from '../libs';
import { migrationController } from './migrationController';

const Routes = express.Router();
const routeName = 'migrations';

export const migrationRoutes = Routes;

Routes.use([`/${routeName}`], (req, res, next) => {
	Helper.logger.info(`a ${req.method} request in ${routeName} route.`);
	next();
});

// Helper.restApiPlaceHolder(Routes, controller, routeName);

Routes.route(`/${routeName}/all`).get(migrationController.index);
