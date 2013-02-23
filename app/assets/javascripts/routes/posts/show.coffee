EmberAuthRailsDemo.PostsShowRoute = Em.Route.extend
  serialize: (model) ->
    post_id: model.get 'param'
