import { Request, Response, Router } from 'express';
import User from '../models/User';

export class UserRouter {
  public router: Router;

  constructor() {
    this.router = Router();
    this.routes();
  }

  public index(req: Request, res: Response): void {
    User.find()
      .then((data: any) => {
        return res.status(200).json({ name: 100, data });
      })
      .catch((error: Error) => {
        res.status(500).json({ error });
        return error;
      });
  }

  public show(req: Request, res: Response): void {
    const { username } = req.params;

    User.findOne({ username })
      .then(data => {
        res.status(200).json({ data });
      })
      .catch(error => {
        res.status(500).json({ error });
      });
  }

  public create(req: Request, res: Response): void {
    const { firstName, lastName, username, email, password } = req.body;

    const user = new User({
      firstName,
      lastName,
      username,
      email,
      password
    });

    user
      .save()
      .then(data => {
        res.status(201).json({ data });
      })
      .catch(error => {
        res.status(500).json({ error });
      });
  }

  public update(req: Request, res: Response): void {
    const { id } = req.params;

    User.findOneAndUpdate({ id }, req.body)
      .then((data: any) => {
        res.status(200).json({ data });
      })
      .catch((error: Error) => {
        res.status(500).json({ error });
      });
  }

  public destroy(req: Request, res: Response): void {
    const { username } = req.params;

    User.findOneAndRemove({ username })
      .then(() => {
        res.status(204).end();
      })
      .catch(error => {
        res.status(500).json({ error });
      });
  }

  // set up our routes
  public routes() {
    this.router.get('/', this.index);
    this.router.get('/:id', this.show);
    this.router.post('/', this.create);
    this.router.put('/:id', this.update);
    this.router.delete('/:id', this.destroy);
  }
}

const userRoutes = new UserRouter();
userRoutes.routes();

export default userRoutes.router;
