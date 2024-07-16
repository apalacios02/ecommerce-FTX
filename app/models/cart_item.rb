# app/models/cart_item.rb
class CartItem < ApplicationRecord
  # Associations
  belongs_to :cart
  
  # Validations
  validates :product_id, presence: true
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  # Methods
  def total_price
    # Define your logic to calculate total price for this cart item
  end
end
