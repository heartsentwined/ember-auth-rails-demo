EmberAuthRailsDemo.UsersRoute = Auth.Route.extend
  model: ->
    EmberAuthRailsDemo.User.find()
