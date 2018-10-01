class Product < ApplicationRecord

  # allows the cart to follow user around the site similar to sessions in bien
  has_many :order_items

  validates :title, presence: true
  validates :price, presence: true
  validates :description, presence: true

  mount_uploader :image_1, ProductImageUploader
  mount_uploader :image_2, ProductImageUploader
  mount_uploader :image_3, ProductImageUploader
  mount_uploader :image_4, ProductImageUploader
  mount_uploader :image_5, ProductImageUploader

  def price_in_dollars
    price / 100
  end

end
