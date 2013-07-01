EmberAuthRailsDemo.Auth = Em.Auth.create
  signInEndPoint: '/users/sign_in'
  signOutEndPoint: '/users/sign_out'

  tokenKey: 'auth_token'
  tokenIdKey: 'user_id'

  modules: ['emberData', 'authRedirectable', 'actionRedirectable', 'rememberable']

  authRedirectable:
    route: 'sign-in'

  actionRedirectable:
    signInRoute: 'users'
    signInSmart: true
    signInBlacklist: ['sign-in']
    signOutRoute: 'posts'

  rememberable:
    tokenKey: 'remember_token'
    period: 7
    autoRecall: true
