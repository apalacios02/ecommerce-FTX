# app/controllers/pages_controller.rb
class PagesController < ApplicationController
    def index
      @categories = Category.all # Example: Fetch all categories
      @featured_products = Product.featured.limit(4) # Example: Fetch featured products
    end
  
    def about
      # Add logic if needed
    end
  
    def contact
      # Add logic if needed
    end
  
    def privacy_policy
      # Add logic if needed
    end
  end
  