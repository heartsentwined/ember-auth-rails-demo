EmberAuthRailsDemo.UsersShowRoute = Auth.Route.extend
  init: ->
    @on 'authAccess', ->
      # do something

  serialize: (model) ->
    user_id: model.get('param')
