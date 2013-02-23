EmberAuthRailsDemo.UsersIndexRoute = Auth.Route.extend
  init: ->
    @on 'authAccess', ->
      # do something

  model: ->
    EmberAuthRailsDemo.User.find()
