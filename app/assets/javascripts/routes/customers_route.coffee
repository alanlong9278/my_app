MyApp.CustomersRoute = Ember.Route.extend
  model: -> @store.find('customer')