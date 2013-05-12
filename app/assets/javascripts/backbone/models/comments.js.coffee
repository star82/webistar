class Webistar.Models.Comments extends Backbone.Model
  paramRoot: 'comments'


class Webistar.Collections.CommentsCollection extends Backbone.Collection
  model: Webistar.Models.Comments
  url: '/comments'