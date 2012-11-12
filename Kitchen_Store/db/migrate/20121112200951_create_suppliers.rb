class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.text :name
      t.text :street
      t.text :city
      t.string :postalCode
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
