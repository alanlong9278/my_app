class CustomerSerializer < ApplicationSerializer
  attributes :id, :CustomerID, :CompanyName, :ContactName, :ContactTitle,
             :Address, :City, :Region, :PostalCode, :Country,
             :Phone, :Fax
end
