# for more details see: http://emberjs.com/guides/models/defining-models/

MyApp.Customer = DS.Model.extend(
  CustomerID: DS.attr('string'),
  CompanyName: DS.attr('string'),
  ContactName: DS.attr('string'),
  ContactTitle: DS.attr('string'),
  Address: DS.attr('string'),
  City: DS.attr('string'),
  Region: DS.attr('string'),
  PostalCode: DS.attr('string'),
  Country: DS.attr('string'),
  Phone: DS.attr('string'),
  Fax: DS.attr('string')
)