Webistar.Views.Contacts ||= {}

class Webistar.Views.Contacts.IndexView extends Backbone.View
  template: HandlebarsTemplates["backbone/templates/contacts/index"]

  initialize: () ->
    #@options.homepages.bind('reset', @addAll)


  render: =>
    template = Handlebars.compile(@template());
    @$el.html(template)
    return this
