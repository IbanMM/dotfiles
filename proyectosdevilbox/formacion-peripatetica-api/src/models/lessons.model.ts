import {Entity, model, property, belongsTo} from '@loopback/repository';
import {Courses} from './courses.model';

@model()
export class Lessons extends Entity {
  @property({
    type: 'number',
    id: true,
    generated: true,
  })
  id?: number;

  @property({
    type: 'string',
    required: true,
  })
  name: string;

  @property({
    type: 'string',
    required: true,
  })
  desc: string;

  @property({
    type: 'string',
    required: true,
  })
  slug: string;

  @belongsTo(() => Courses)
  coursesId: number;

  constructor(data?: Partial<Lessons>) {
    super(data);
  }
}

export interface LessonsRelations {
  // describe navigational properties here
}

export type LessonsWithRelations = Lessons & LessonsRelations;
