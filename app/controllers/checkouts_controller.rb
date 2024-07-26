class CheckoutsController < ApplicationController
  def create
    @cart = session[:cart] || {}

    line_items = @cart.map do |product_id, quantity|
      product = Product.find(product_id)
      {
        price_data: {
          currency: 'cad',
          product_data: {
            name: product.name
          },
          unit_amount: (product.price * 100).to_i, # Stripe expects the amount in cents
        },
        quantity: quantity,
      }
    end

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: line_items,
      mode: 'payment',
      success_url: root_url + "?success=true",
      cancel_url: root_url + "?canceled=true"
    )

    redirect_to session.url, allow_other_host: true
  end
end
