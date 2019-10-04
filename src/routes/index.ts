import { authRoutes } from './authRoutes';
import { userRoutes } from './userRoutes';
import { migrationRoutes } from '../libs/migrationRoutes';

export const apiRoutes = [migrationRoutes, authRoutes, userRoutes];
