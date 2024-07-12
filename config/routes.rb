# config/routes.rb
Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#index' # Sets the root of your application to the index action of PagesController

  get 'about', to: 'pages#about' # Route for About Us page
  get 'contact', to: 'pages#contact' # Route for Contact page
  get 'privacy_policy', to: 'pages#privacy_policy' # Route for Privacy Policy page
  
  # Add more routes as needed
  resources :customers
end