class Cart < ApplicationRecord
	belongs_to :user
	has_many :items
	belongs_to :item
end
