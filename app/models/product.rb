class Product < ApplicationRecord

	belongs_to :admin
    has_many :cart_items
	mount_uploader :image, ImageUploader

end
