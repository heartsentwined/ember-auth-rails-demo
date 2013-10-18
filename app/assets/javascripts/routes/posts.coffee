EmberAuthRailsDemo.PostsIndexRoute = Em.Route.extend
  model: ->
    @store.findQuery 'post'

EmberAuthRailsDemo.PostsShowRoute = Em.Route.extend
  serialize: (model) ->
    post_id: model.get 'param'
