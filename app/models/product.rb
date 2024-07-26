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

  # Validations
  validates :category_id, presence: true
  validates :name, presence: true, length: { maximum: 255 }
  validates :description, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :stock_quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  # Active Storage association for product image
  has_one_attached :image
  
end
