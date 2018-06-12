import { model, Schema } from 'mongoose';

const UserSchema: Schema = new Schema({
  createdAt: {
    type: Date,
    default: Date.now,
  },
  updatedAt: {
    type: Date,
    default: Date.now,
  },
  firstName: {
    type: String,
    default: '',
    required: true,
  },
  lastName: {
    type: String,
    default: '',
    required: true,
  },
  username: {
    type: String,
    default: '',
    required: true,
    unique: true,
    lowercase: true,
  },
  email: {
    type: String,
    default: '',
    required: true,
  },
  password: {
    type: String,
    default: '',
    required: true,
  },
  posts: [
    {
      type: Schema.Types.ObjectId,
      ref: 'Post',
    },
  ],
});

export default model('User', UserSchema);
