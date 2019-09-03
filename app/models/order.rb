class Order < ApplicationRecord
	belongs_to :user
	has_many :items
	has_many :carts, through: :items
end
