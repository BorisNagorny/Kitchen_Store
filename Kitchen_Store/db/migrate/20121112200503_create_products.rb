class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.decimal :tempPrice
      t.integer :stock_quantity
      t.datetime :created_at
      t.datetime :last_purachased
      t.decimal :weight

      t.timestamps
    end
  end
end
