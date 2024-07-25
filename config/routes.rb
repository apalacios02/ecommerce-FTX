# config/routes.rb
Rails.application.routes.draw do
  devise_for :customers
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#index' # Sets the root of your application to the index action of PagesController

  get '/about', to: 'pages#about', as: 'about'
  get '/contact', to: 'pages#contact', as: 'contact'
  get 'privacy_policy', to: 'pages#privacy_policy' # Route for Privacy Policy page
  
  # Add more routes as needed
  resources :customers
  resources :products
  resources :categories
  resources :provinces
  resource :cart, only: [:show, :update, :destroy] do
    post 'add/:product_id', action: 'add', as: 'add_to'
    get 'add/:product_id', action: 'add', as: 'add_to_get'  # Add GET route
    # add more routes as needed (e.g., remove, update quantity)
    patch 'update_item', on: :collection
    delete 'remove_item', on: :collection
  end


  
end