class Railschan.Routers.BoardsRouter extends Backbone.Router
  initialize: (options) ->
    @boards = new Railschan.Collections.BoardsCollection()
    @boards.reset options.boards

  routes:
    "/new": "newBoard"
    "/index": "index"
    "/:id/edit": "edit"
    "/:id": "show"
    ".*": "index"

  newBoard: ->
    @view = new Railschan.Views.Boards.NewView(collection: @boards)
    $("#boards").html(@view.render().el)

  index: ->
    @view = new Railschan.Views.Boards.IndexView(boards: @boards)
    $("#boards").html(@view.render().el)

  show: (id) ->
    board = @boards.get(id)
    
    @view = new Railschan.Views.Boards.ShowView(model: board)
    $("#boards").html(@view.render().el)
    
  edit: (id) ->
    board = @boards.get(id)

    @view = new Railschan.Views.Boards.EditView(model: board)
    $("#boards").html(@view.render().el)
  