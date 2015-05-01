# For more information see: http://emberjs.com/guides/routing/

MyApp.Router.map ()->
   @resource 'customers'
   @resource 'customer',{ path: ':customer_id' }


