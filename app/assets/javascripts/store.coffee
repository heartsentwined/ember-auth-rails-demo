EmberAuthRailsDemo.Store = DS.Store.extend
  revision: 11
  adapter: DS.RESTAdapter.create
    url: '/api'
