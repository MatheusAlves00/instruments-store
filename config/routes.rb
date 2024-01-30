Rails.application.routes.draw do
  devise_for :users
  resources :instruments
  resources :users

  get "/shop", to: "shop#index"

  root to: 'welcome#index'
end
