EmberAuthRailsDemo.AuthSignInView = Em.View.extend
  templateName: 'auth/sign-in'

  email:    null
  password: null
  remember: false

  submit: (event, view) ->
    event.preventDefault()
    event.stopPropagation()
    Auth.signIn
      email:    @get 'email'
      password: @get 'password'
      remember: @get 'remember'
