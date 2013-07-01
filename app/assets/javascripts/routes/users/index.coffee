EmberAuthRailsDemo.UsersIndexRoute = Em.Route.extend EmberAuthRailsDemo.Auth.AuthRedirectable,
  model: ->
    EmberAuthRailsDemo.User.find()
