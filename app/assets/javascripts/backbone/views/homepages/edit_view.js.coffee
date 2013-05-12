Webistar.Views.Homepages ||= {}

class Webistar.Views.Homepages.EditView extends Backbone.View
  template: JST["backbone/templates/homepages/edit"]

  events:
    "submit #edit-homepages": "update"

  update: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success: (homepages) =>
        @model = homepages
        window.location.hash = "/#{@model.id}"
    )

  render: ->
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
