class Webistar.Models.Homepages extends Backbone.Model
  paramRoot: 'homepage'


class Webistar.Collections.HomepagesCollection extends Backbone.Collection
  model: Webistar.Models.Homepages
  url: '/homepages'
