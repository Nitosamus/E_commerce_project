class Item < ApplicationRecord
	  validates :title, presence: true
	  validates :description, length: { maximum: 500 }
	  validates :price, presence: true
	  validates :image_url, uniqueness: true
end
