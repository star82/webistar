Webistar.Views.Gallery ||= {}

class Webistar.Views.Gallery.IndexView extends Backbone.View
  template: HandlebarsTemplates["backbone/templates/gallery/index"]

  events:
    "click #create_image"   : "create"

  initialize: () ->
    @gallery = new Webistar.Collections.GalleriesCollection()
    @gallery.fetch()
    @gallery.bind('reset', @addAll)
    @gallery.bind('reset', @render)


  addAll: () =>
    #@gallery.each @addOne

  addOne: (image,index) =>
    #view  = new Webistar.Views.Gallery.GalleryView({model : image, index: index+1})
    #@$("#itemContainer").append(view.render().el)

  create: (e)->
    e.preventDefault()
    e.stopPropagation()
    @view = new Webistar.Views.Gallery.NewView()
    $(".contents").html(@view.render().el)

  render: =>
    template = Handlebars.compile(@template({model:@gallery.toJSON()}));
    @$el.html(template)
    return this
