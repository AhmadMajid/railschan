class Railschan.Models.Board extends Backbone.Model
  idAttribute: '_id'
  paramRoot: 'board'

  defaults:
    name: null
    short_name: null

class Railschan.Collections.BoardsCollection extends Backbone.Collection
  model: Railschan.Models.Board
  url: '/boards'
