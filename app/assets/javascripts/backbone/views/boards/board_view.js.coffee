Railschan.Views.Boards ||= {}

class Railschan.Views.Boards.BoardView extends Backbone.View
  template: JST["backbone/templates/boards/board"]
  
  events:
    "click .destroy" : "destroy"
      
  tagName: "tr"
  
  destroy: () ->
    @options.model.destroy()
    this.remove()
    
    return false
    
  render: ->
    $(this.el).html(this.template(this.options.model.toJSON() ))    
    return this