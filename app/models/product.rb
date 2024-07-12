# app/models/product.rb
class Product < ApplicationRecord
  belongs_to :category
  has_many :order_items

  # Active Storage association for product image
  has_one_attached :image

  # Validation for image attachment
  validates :image, attached: true, content_type: ['image/png', 'image/jpg', 'image/jpeg']
end