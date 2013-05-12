class Webistar.Routers.HomepagesRouter extends Backbone.Router
  initialize: (options) ->
    #@homepages = new Webistar.Collections.HomepagesCollection()
    #@homepages.reset options.homepages

  routes:
    "comments/new"  : "comment_new"
    "gallery"       : "gallery"
    "contact"       : "contact"
    ".*"            : "index"

  index: ->
    @view = new Webistar.Views.Homepages.IndexView()
    $(".contents").html(@view.render().el)

  gallery: ->
    console.log 'galleries'
    @view = new Webistar.Views.Gallery.IndexView()
    $(".contents").html(@view.render().el)

  contact: ->
    console.log 'conctact'
    @view = new Webistar.Views.Contacts.IndexView()
    $(".contents").html(@view.render().el)

  comment_new: ->
    console.log "comments"
    @comment = new Webistar.Collections.CommentsCollection()
    @view = new Webistar.Views.Comments.NewView({collection:@comment })
    $(".contents").html(@view.render().el)

