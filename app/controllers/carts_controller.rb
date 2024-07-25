class CartsController < ApplicationController
  def show
    @cart = session[:cart] || {}
  end

  def add
    product_id = params[:product_id].to_i
    @cart = session[:cart] ||= {}
    
    # Add product to cart
    @cart[product_id] ||= 0
    @cart[product_id] += 1
    
    redirect_to cart_path
  end

  def update_item
    @cart = session[:cart] || {}
    product_id = params[:product_id]
    quantity = params[:quantity].to_i

    if quantity > 0
      @cart[product_id] = quantity
    else
      @cart.delete(product_id)
    end

    session[:cart] = @cart
    redirect_to cart_path, notice: 'Cart updated successfully'
  end

  def remove_item
    @cart = session[:cart] || {}
    product_id = params[:product_id]

    @cart.delete(product_id)
    session[:cart] = @cart
    redirect_to cart_path, notice: 'Item removed successfully'
  end
  
  # Other actions like destroy, clear cart, etc.
end
