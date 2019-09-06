class Item < ApplicationRecord
	
	belongs_to :cart, optional: true
	has_many :carts
	has_many :orders, through: :carts
	  validates :title, presence: true
	  validates :description, length: { maximum: 500 }
	  validates :price, presence: true
	  validates :image_url, presence: true
end
