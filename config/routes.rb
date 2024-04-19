Rails.application.routes.draw do
  devise_for :users
  resources :instruments, :except => [:index, :show]
  resources :users, :except => [:new]
  resources :shop, controller: 'instruments', :only => [:index, :show]
  resources :product_types

  get 'contacts', to: 'contacts#index'
  get :shopping_carts, :path => 'cart', to: 'shopping_carts#index'

  root to: 'welcome#index'
end
