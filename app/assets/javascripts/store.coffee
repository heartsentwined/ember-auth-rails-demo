EmberAuthRailsDemo.Store = DS.Store.extend
  adapter: DS.ActiveModelAdapter.reopen
    namespace: 'api'
