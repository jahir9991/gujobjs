import config from 'config';
import { Helper } from '../../libs';
import * as allModel from '../../models/MYSQL_MIGRATE';
declare let Object: any;

export const migrationController: any = {};
migrationController.index = async (req, res, next) => {
  try {
    Helper.logPlaceHolder.initLogPlaceHolder(req, 'migrate', 'all');

    let force = false;
    let alter = false;

    if (req.query.force && req.query.force === 'true') {
      if (
        req.query.token &&
        req.query.token === config.get('MIGRATION.token')
      ) {
        force = true;
        alter = true;
      }
    }
    Object.values(allModel).forEach((element) => {
      element.sync({ alter });
    });

    res.status(200).json({
      success: true,
      message: `migrating..... ${force ? 'with force' : 'without force'}`
    });
  } catch (error) {
    Helper.logger.error('error', error);

    res.status(200).json({
      success: false,
      message: 'something went wrong',
      error
    });
  }
};

migrationController.seed = async (req, res, next) => {
  Helper.logPlaceHolder.initLogPlaceHolder(req, 'migrate', 'all');
};
