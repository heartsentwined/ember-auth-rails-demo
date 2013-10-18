EmberAuthRailsDemo.AuthSignOutController = Em.Controller.extend
  actions:
    signOut: ->
      @auth.signOut()
