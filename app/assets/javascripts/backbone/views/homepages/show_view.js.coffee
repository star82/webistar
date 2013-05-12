Webistar.Views.Homepages ||= {}

class Webistar.Views.Homepages.ShowView extends Backbone.View
  template: JST["backbone/templates/homepages/show"]

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
