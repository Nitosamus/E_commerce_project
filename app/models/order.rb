class Order < ApplicationRecord
	belongs_to :user
	has_many :carts
	has_many :items, through: :carts
end
