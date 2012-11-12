class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.datetime :created_at
      t.datetime :expected_date
      t.decimal :priceSold

      t.timestamps
    end
  end
end
