class Item < ApplicationRecord
	has_many :carts
	has_many :orders
	  validates :title, presence: true
	  validates :description, length: { maximum: 500 }
	  validates :price, presence: true
	  validates :image_url, presence: true
end
