Webistar.Views.Gallery ||= {}

class Webistar.Views.Gallery.NewView extends Backbone.View
  template: HandlebarsTemplates["backbone/templates/gallery/new"]

  events:
    "submit #gallery1": "save"

  attributes: ->
    name:   @model.get('name') if @model


  constructor: (options) ->
    super(options)
    @gallery = new Webistar.Collections.GalleriesCollection()
    @gallery.fetch()
    @model = new @gallery.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @gallery.create(@model.toJSON(),
      success: (homepages) =>
        @model = homepages
        #window.location.hash = "/#{@model.id}"

      error: (homepages, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    template = Handlebars.compile(@template());
    @$el.html(template)

    this.$("form").backboneLink(@model)

    return this
