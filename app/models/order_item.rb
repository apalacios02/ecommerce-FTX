class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product

   # Validations
   validates :order_id, presence: true, numericality: { only_integer: true }
   validates :product_id, presence: true, numericality: { only_integer: true }
   validates :price, presence: true, numericality: true
   validates :quantity, presence: true, numericality: { only_integer: true }
   validates :tax, presence: true, numericality: true

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "order_id", "price", "product_id", "quantity", "tax", "updated_at"]
  end

end
