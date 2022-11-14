Rails.application.routes.draw do
  resources :instruments
  resources :users

  get "/shop", to: "shop#index"

  root to: 'welcome#index'
end
