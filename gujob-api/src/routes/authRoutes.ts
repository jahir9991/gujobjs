import * as express from 'express';
import {authController as controller } from '../controllers';
import { Helper } from '../libs';

const Routes = express.Router();
const routeName = 'auth';

export const authRoutes = Routes;

Routes.use([`/${routeName}`], (req, res, next) => {

    Helper.logger.info(`a ${req.method} request in ${routeName} route.`);
    next();

});

// Helper.restApiPlaceHolder(Routes, controller, routeName);

Routes.route(`/${routeName}/login`).post(controller.login);

Routes.route(`/${routeName}/signUp`).post(controller.signUp);