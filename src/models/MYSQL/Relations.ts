import { User } from './user';
import { UserInfo } from './userInfo';

if (!process.env.migrate) {
  // console.log(123);
  User.belongsTo(UserInfo, {
    foreignKey: 'user_info_id',
    targetKey: 'id',
    as: 'userInfo'
  });
}
