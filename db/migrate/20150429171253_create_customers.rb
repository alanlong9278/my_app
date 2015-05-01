class CreateCustomers < ActiveRecord::Migration
  def up
    create_table :customers do |t|
      t.string   :CustomerID
      t.string   :CompanyName
      t.string   :ContactName
      t.string   :ContactTitle
      t.string   :Address
      t.string   :City
      t.string   :Region
      t.string   :PostalCode
      t.string   :Country
      t.string   :Phone
      t.string   :Fax
      t.timestamps
    end
  end

  def down
  end
end
