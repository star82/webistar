Webistar.Views.Gallery ||= {}

class Webistar.Views.Gallery.GalleryView extends Backbone.View
  template: HandlebarsTemplates["backbone/templates/gallery/gallery"]
  tagName: 'li'

  render: =>
    template = Handlebars.compile(@template({model:@model.toJSON(), index: @options.index}));
    @$el.html(template)
    return this
