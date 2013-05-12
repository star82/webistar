Webistar.Views.Homepages ||= {}

class Webistar.Views.Homepages.HomepagesView extends Backbone.View
  template: JST["backbone/templates/homepages/homepages"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
