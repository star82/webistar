Webistar.Views.Comments ||= {}

class Webistar.Views.Comments.NewView extends Backbone.View
  template: HandlebarsTemplates["backbone/templates/comments/new"]

  events:
    "submit #new-homepages": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    #e.stopPropagation()

    @model.unset("errors")

    console.log @model.toJSON()
    @collection.create(@model.toJSON(),
      success: (homepages) =>
        console.log 'test'
        @model = homepages
        window.location.hash = "/#{@model.id}"

      error: (homepages, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    template = Handlebars.compile(@template())
    @$el.html(template)


    $.getScript "http://www.google.com/recaptcha/api/js/recaptcha_ajax.js", ->
      Recaptcha.create "6Lfg1d4SAAAAAOo3i_WYogIksf1Y2MPAhJfRaPnB", "captchadiv",
                   tabindex: 1
                   theme: "red"
                   callback: Recaptcha.focus_response_field

  #@$el.html(@template(@model.toJSON() ))
    this.$("form").backboneLink(@model)

    return this
