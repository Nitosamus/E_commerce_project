class Cart < ApplicationRecord
	belongs_to :user
	belongs_to :order, optional: true
	belongs_to :item
	has_many :items
end
