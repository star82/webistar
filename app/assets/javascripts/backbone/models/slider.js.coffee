class Webistar.Models.Slider extends Backbone.Model
  paramRoot: 'slider'

class Webistar.Collections.SlidersCollection extends Backbone.Collection
  model: Webistar.Models.Slider
  url: '/sliders'
