EmberAuthRailsDemo.AuthSignInController = Em.Controller.extend
  email: null
  password: null

  actions:
    signIn: ->
      @auth.signIn
        data:
          email:    @get 'email'
          password: @get 'password'
