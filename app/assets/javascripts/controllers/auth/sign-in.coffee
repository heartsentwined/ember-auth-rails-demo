EmberAuthRailsDemo.AuthSignInController = Em.Controller.extend
  email: null
  password: null
  remember: false

  actions:
    signIn: ->
      @auth.signIn
        data:
          email:    @get 'email'
          password: @get 'password'
          remember: @get 'remember'
