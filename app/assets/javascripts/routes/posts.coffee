EmberAuthRailsDemo.PostsRoute = Em.Route.extend
  model: ->
    EmberAuthRailsDemo.Post.find()
