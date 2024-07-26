# order.rb
class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_items

  validates :customer_id, presence: true, numericality: { only_integer: true }
  
end
