class Province < ActiveRecord::Base
	has_many :customers
	has_many :suppliers
end
