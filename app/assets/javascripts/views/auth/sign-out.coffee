EmberAuthRailsDemo.AuthSignOutView = Em.View.extend
  templateName: 'auth/sign-out'

  submit: (event, view) ->
    event.preventDefault()
    event.stopPropagation()
    EmberAuthRailsDemo.Auth.signOut()
