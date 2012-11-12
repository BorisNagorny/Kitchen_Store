class Product < ActiveRecord::Base
  has_many :order_products
  has_many :orders, :through => :order_products
  has_many :product_images
  has_many :supplier_products
  has_many :supplier_orders
  has_many :suppliers, :through => :supplier_products
  has_many :suppliers, :through => :supplier_orders
  
end
