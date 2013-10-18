EmberAuthRailsDemo.AuthSignOutController = Em.Controller.extend
  actions:
    signOut: ->
      @auth.signOut().then -> window.location.reload true
