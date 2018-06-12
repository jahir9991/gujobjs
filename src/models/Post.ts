import { model, Schema } from 'mongoose';

const PostSchema: Schema = new Schema({
  createdAt: {
    type: Date,
    default: Date.now,
  },
  updatedAt: {
    type: Date,
    default: Date.now,
  },
  title: {
    type: String,
    default: '',
    required: true,
  },
  slug: {
    type: String,
    default: '',
    required: true,
    unique: true,
    trim: true,
  },
  content: {
    type: String,
    default: '',
    required: true,
  },
  featuredImage: {
    type: String,
    default: '',
  },
  category: {
    type: String,
    default: '',
  },
  published: {
    type: Boolean,
    default: false,
  },
});

export default model('Post', PostSchema);
