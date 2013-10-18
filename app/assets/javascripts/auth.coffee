EmberAuthRailsDemo.Auth = Em.Auth.extend
  request: 'jquery'
  response: 'json'
  strategy: 'token'
  session: 'cookie'

  modules: ['emberData']

  signInEndPoint: '/api/sign_in'
  signOutEndPoint: '/api/sign_out'
  tokenKey: 'auth_token'
  tokenIdKey: 'user_id'
  tokenLocation: 'param'
