class CreateSupplierOrders < ActiveRecord::Migration
  def change
    create_table :supplier_orders do |t|
      t.integer :quantity
      t.datetime :created_at
      t.datetime :updated_at
      t.boolean :received

      t.timestamps
    end
  end
end
