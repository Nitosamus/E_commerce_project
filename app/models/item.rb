class Item < ApplicationRecord
	belongs_to :cart
	belongs_to :order
	has_many :carts
	  validates :title, presence: true
	  validates :description, length: { maximum: 500 }
	  validates :price, presence: true
	  validates :image_url, presence: true
end
