Webistar.Views.Contacts ||= {}

class Webistar.Views.Contacts.IndexView extends Backbone.View
  template: HandlebarsTemplates["backbone/templates/contacts/index"]

  events:
    "submit #contact-form"     : "save"

  save: (e)->
    e.preventDefault()
    e.stopPropagation()

    $.post "/homepages/contact",
    {
      email: $('#email').val()
      name: $('#name').val()
      desc: $('#desc').val()
    }


  initialize: () ->
    #@options.homepages.bind('reset', @addAll)


  render: =>
    template = Handlebars.compile(@template());
    @$el.html(template)
    return this
