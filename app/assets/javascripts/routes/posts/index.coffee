EmberAuthRailsDemo.PostsIndexRoute = Em.Route.extend
  model: ->
    EmberAuthRailsDemo.Post.find()
