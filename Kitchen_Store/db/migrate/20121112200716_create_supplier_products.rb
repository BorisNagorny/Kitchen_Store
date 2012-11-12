class CreateSupplierProducts < ActiveRecord::Migration
  def change
    create_table :supplier_products do |t|
      t.decimal :cost
      t.datetime :created_at

      t.timestamps
    end
  end
end
