window.BackboneApp =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new BackboneApp.Routers.Entries()
    Backbone.history.start()

$(document).ready ->
  BackboneApp.initialize()
