EmberAuthRailsDemo.ApplicationView = Em.View.extend
  didInsertElement: ->
    Auth.Module.RememberMe.recall()
