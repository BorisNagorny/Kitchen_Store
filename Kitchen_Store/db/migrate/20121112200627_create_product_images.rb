class CreateProductImages < ActiveRecord::Migration
  def change
    create_table :product_images do |t|
      t.datetime :created_at
      t.string :imageName

      t.timestamps
    end
  end
end
