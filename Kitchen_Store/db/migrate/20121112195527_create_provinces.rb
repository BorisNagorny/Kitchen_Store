class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.string :name
      t.decimal :pstRate
      t.decimal :gstRate
      t.decimal :hstRate
      t.integer :shipping_days
      t.integer :shipping_surcharge
      t.datetime :created_at

      t.timestamps
    end
  end
end
