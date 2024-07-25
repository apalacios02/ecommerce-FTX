# product.rb
class Product < ApplicationRecord

  def self.ransackable_attributes(auth_object = nil)
    ["category_id", "created_at", "description", "id", "id_value", "name", "price", "stock_quantity", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["category", "order_items"]
  end

  belongs_to :category
  has_many :order_items

  # Active Storage association for product image
  has_one_attached :image
  
end
