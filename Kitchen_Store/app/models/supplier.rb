class Supplier < ActiveRecord::Base
	has_one :supplier_product
	has_many :supplier_orders
	belongs_to :province
end
