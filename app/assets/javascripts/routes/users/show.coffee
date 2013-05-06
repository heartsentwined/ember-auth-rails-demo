EmberAuthRailsDemo.UsersShowRoute = Em.Route.extend
  serialize: (model) ->
    user_id: model.get('param')

  model: (params) ->
    if EmberAuthRailsDemo.Auth.get('signedIn')
      EmberAuthRailsDemo.User.find(params.user_id)
