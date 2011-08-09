Railschan.Views.Boards ||= {}

class Railschan.Views.Boards.IndexView extends Backbone.View
  template: JST["backbone/templates/boards/index"]
    
  initialize: () ->
    _.bindAll(this, 'addOne', 'addAll', 'render');
    
    @options.boards.bind('reset', this.addAll);
   
  addAll: () ->
    @options.boards.each(this.addOne)
  
  addOne: (board) ->
    view = new Railschan.Views.Boards.BoardView({model : board})
    this.$("tbody").append(view.render().el)
       
  render: ->
    $(this.el).html(this.template(boards: this.options.boards.toJSON() ))
    @addAll()
    
    return this