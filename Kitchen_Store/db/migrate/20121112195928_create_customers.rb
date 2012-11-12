class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :fName
      t.string :lName
      t.text :city
      t.text :address
      t.string :postalCode
      t.datetime :created_at

      t.timestamps
    end
  end
end
