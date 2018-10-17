import * as DataTypes from 'sequelize';

import { mysqlConnect } from '../../libs';
import { UserInfo } from './userInfo';

export const User: any = mysqlConnect.define(
  'users',
  {
    id: {
      type: DataTypes.INTEGER(11),
      allowNull: false,
      primaryKey: true,
      autoIncrement: true
    },

    username: {
      type: DataTypes.STRING(255),
      allowNull: false,
      unique: true
    },
    password: {
      type: DataTypes.STRING(255),
      allowNull: false
    },
    email: {
      type: DataTypes.STRING(255),
      allowNull: false,
      unique: true
    },
    user_info_id: {
      type: DataTypes.INTEGER(11),
      allowNull: true
    },
    access_group_id: {
      type: DataTypes.INTEGER(11),
      allowNull: false
    },
    status: {
      type: DataTypes.INTEGER(3),
      allowNull: true,
      defaultValue: 0
    },
    remember_token: {
      type: DataTypes.INTEGER(11),
      allowNull: true
    },
    created_at: {
      type: DataTypes.DATE,
      allowNull: true
    },
    updated_at: {
      type: DataTypes.DATE,
      allowNull: true
    },
    deleted_at: {
      type: DataTypes.DATE,
      allowNull: true
    }
  },
  {
    tableName: 'users',
    timestamps: true,
    underscored: true,
    paranoid: true,

    defaultScope: {
      attributes: {
        exclude: ['password', 'remember_token', 'deleted_at']
      }
    },
    scopes: {
      withAll: { attributes: {} },
      withoutPassword: {
        attributes: {
          exclude: ['password', 'remember_token']
        }
      }
    }
  }
);
