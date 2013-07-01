EmberAuthRailsDemo.UsersShowRoute = Em.Route.extend EmberAuthRailsDemo.Auth.AuthRedirectable,
  serialize: (model) ->
    user_id: model.get('param')
