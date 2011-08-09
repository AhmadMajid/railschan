Railschan.Views.Boards ||= {}

class Railschan.Views.Boards.ShowView extends Backbone.View
  template: JST["backbone/templates/boards/show"]
   
  render: ->
    $(this.el).html(this.template(this.options.model.toJSON() ))
    return this