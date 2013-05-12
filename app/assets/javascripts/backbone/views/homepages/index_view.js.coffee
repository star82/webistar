Webistar.Views.Homepages ||= {}

class Webistar.Views.Homepages.IndexView extends Backbone.View
  template: HandlebarsTemplates["backbone/templates/homepages/index"]
  id: "gamesHolder"

  initialize: () ->
    #@options.homepages.bind('reset', @addAll)



  render: =>
    template = Handlebars.compile(@template());
    @$el.html(template)

    @$('#coin-slider').coinslider
      hoverPause: true
      width: 720
      height: 260
      navigation: true
      delay: 5000
      sph: 3
      spw: 2


    return this
