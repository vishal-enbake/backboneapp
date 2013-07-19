class BackboneApp.Routers.Entries extends Backbone.Router
  routes:
    "": "index"

  index: ->
    view = new BackboneApp.Views.EntriesIndex()
    $("#container").html(view.render().el)
