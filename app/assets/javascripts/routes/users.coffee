EmberAuthRailsDemo.UsersRoute = Em.Route.extend
  authRedirectable: true

EmberAuthRailsDemo.UsersIndexRoute = Em.Route.extend
  model: ->
    @store.findQuery 'user'

EmberAuthRailsDemo.UsersShowRoute = Em.Route.extend
  serialize: (model) ->
    user_id: model.get 'param'
