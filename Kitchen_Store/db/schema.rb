# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121112200951) do

  create_table "customers", :force => true do |t|
    t.string   "fName"
    t.string   "lName"
    t.text     "city"
    t.text     "address"
    t.string   "postalCode"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "order_products", :force => true do |t|
    t.decimal  "price"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "orders", :force => true do |t|
    t.integer  "quantity"
    t.datetime "created_at",    :null => false
    t.datetime "expected_date"
    t.decimal  "priceSold"
    t.datetime "updated_at",    :null => false
  end

  create_table "product_images", :force => true do |t|
    t.datetime "created_at", :null => false
    t.string   "imageName"
    t.datetime "updated_at", :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price"
    t.decimal  "tempPrice"
    t.integer  "stock_quantity"
    t.datetime "created_at",      :null => false
    t.datetime "last_purachased"
    t.decimal  "weight"
    t.datetime "updated_at",      :null => false
  end

  create_table "provinces", :force => true do |t|
    t.string   "name"
    t.decimal  "pstRate"
    t.decimal  "gstRate"
    t.decimal  "hstRate"
    t.integer  "shipping_days"
    t.integer  "shipping_surcharge"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "supplier_orders", :force => true do |t|
    t.integer  "quantity"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.boolean  "received"
  end

  create_table "supplier_products", :force => true do |t|
    t.decimal  "cost"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "suppliers", :force => true do |t|
    t.text     "name"
    t.text     "street"
    t.text     "city"
    t.string   "postalCode"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
