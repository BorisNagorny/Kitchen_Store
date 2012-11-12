class CreateOrderProducts < ActiveRecord::Migration
  def change
    create_table :order_products do |t|
      t.decimal :price
      t.datetime :created_at

      t.timestamps
    end
  end
end
