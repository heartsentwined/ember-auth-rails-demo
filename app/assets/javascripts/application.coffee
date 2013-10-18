#= require jquery
#= require handlebars
#= require ember
#= require ember-data
#
#= require ember-auth
#= require ember-auth-request-jquery
#= require ember-auth-response-json
#= require ember-auth-strategy-token
#= require ember-auth-session-cookie
#= require ember-auth-module-ember-data
#= require ember-auth-module-auth-redirectable
#= require ember-auth-module-action-redirectable
#
#= require_self
#= require auth
#= require ember-auth-rails-demo

window.EmberAuthRailsDemo = Em.Application.create()

#= require_tree .
