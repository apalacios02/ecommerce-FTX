# app/controllers/pages_controller.rb
class PagesController < ApplicationController
    def index
      # @categories = Category.all # Example: Fetch all categories
      # @featured_products = Product.featured.limit(4) # Example: Fetch featured products
    end
  
    def about
      @page = Page.find_by(slug: 'about') # Adjust this query based on your `slug` or `title` logic
    end
  
    def contact
      @page = Page.find_by(slug: 'contact') # Adjust this query based on your `slug` or `title` logic
    end
  
    def privacy_policy
      # Add logic if needed
    end
  end
  