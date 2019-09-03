class Cart < ApplicationRecord
	belongs_to :user
	has_many :items
	has_many :orders, through: :items
	belongs_to :item
end
