class Webistar.Models.Gallery extends Backbone.Model
  paramRoot: 'galleries'
  urlRoot:  '/galleries'
  methodMap:
    'create': 'POST'
    'update': 'PUT'
    'delete': 'DELETE'
    'read':   'GET'
  sync:(method, model, options)->
    type = this.methodMap[method]
    self=this
    if type == 'DELETE' or type =='GET'
      return Backbone.sync(method, model, options)
    else
      form=new FormData()
      form.append('galleries[image]',this.attributes.image)
      url = this.url()
      if options.url
        url = options.url
      xhr = new XMLHttpRequest()
      xhr.onreadystatechange =
        ()->
          if xhr.readyState == 4
            if xhr.status== 200 or xhr.status == 201
              options.success($.parseJSON(xhr.response),xhr.status,xhr)
            else
              options.error(self,$.parseJSON(xhr.response))
      xhr.open(type, url)
      xhr.setRequestHeader('Accept', 'application/json')
      xhr.send(form)

class Webistar.Collections.GalleriesCollection extends Backbone.Collection
  model: Webistar.Models.Gallery
  url: '/galleries'
