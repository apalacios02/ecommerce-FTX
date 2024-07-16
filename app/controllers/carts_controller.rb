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

  def remove
    product_id = params[:product_id].to_i
    @cart = session[:cart] ||= {}
    
    # Remove product from cart
    @cart.delete(product_id)
    
    redirect_to cart_path
  end

  def update
    product_id = params[:product_id].to_i
    quantity = params[:quantity].to_i
    @cart = session[:cart] ||= {}
    
    # Update quantity of product in cart
    if quantity <= 0
      @cart.delete(product_id)
    else
      @cart[product_id] = quantity
    end
    
    redirect_to cart_path
  end

  # Other actions like destroy, clear cart, etc.
end
