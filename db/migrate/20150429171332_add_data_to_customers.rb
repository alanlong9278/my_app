class AddDataToCustomers < ActiveRecord::Migration
  def change
    svc = OData::Service.new('http://services.odata.org/V2/Northwind/Northwind.svc')
    svc.Customers
    customers = svc.execute
    customers.each do |customer|
      customerID = customer.CustomerID.to_s.gsub("'", " ")
      companyName = customer.CompanyName.to_s.gsub("'", " ")
      contactName = customer.ContactName.to_s.gsub("'", " ")
      contactTitle = customer.ContactTitle.to_s.gsub("'", " ")
      address = customer.Address.to_s.gsub("'", " ")
      city = customer.City.to_s.gsub("'", " ")
      region = customer.Region.to_s.gsub("'", " ")
      postalCode = customer.PostalCode.to_s.gsub("'", " ")
      country = customer.Country.to_s.gsub("'", " ")
      phone = customer.Phone.to_s.gsub("'", " ")
      fax = customer.Fax.to_s.gsub("'", " ")
      # c = Customer.create(:CustomerID => customerID, :CompanyName => companyName,
      #                  :ContactName => contactName, :ContactTitle => contactTitle,
      #                  :Address => address, :City => city,
      #                  :Region => region, :PostalCode => postalCode,
      #                  :Country => country, :Phone => phone,
      #                  :Fax => fax)
      today = Time.new
      execute("insert into customers (CustomerID, CompanyName, ContactName, ContactTitle,
                                  Address, City,
                                  Region, PostalCode, Country, Phone, Fax, created_at, updated_at)
                                 values ('#{customerID}', '#{companyName}', '#{contactName}',
                                            '#{contactTitle}', '#{address}', '#{city}',
                                            '#{region}', '#{postalCode}', '#{country}',
                                            '#{phone}', '#{fax}', '#{today}','#{today}')")
    end
  end
end
