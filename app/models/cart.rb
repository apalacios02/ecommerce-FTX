# app/models/cart.rb
class Cart
  attr_reader :cart_item

  def initialize(items = {})
    @cart_items = items || {}
  end

  def add_item(product_id, quantity)
    @cart_items[product_id] ||= 0
    @cart_items[product_id] += quantity
  end

  def remove_item(product_id)
    @cart_items.delete(product_id)
  end

  def update_quantity(product_id, new_quantity)
    if new_quantity <= 0
      @cart_items.delete(product_id)
    else
      @cart_items[product_id] = new_quantity
    end
  end
end
