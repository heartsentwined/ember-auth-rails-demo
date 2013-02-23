EmberAuthRailsDemo.Router.reopen
  location: 'history'

EmberAuthRailsDemo.Router.map ->
  @resource 'posts', ->
    @route 'show', {path: '/:post_id'}
  @resource 'users', ->
    @route 'show', {path: '/:user_id'}
