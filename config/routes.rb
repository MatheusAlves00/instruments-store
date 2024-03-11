Rails.application.routes.draw do
  devise_for :users
  resources :instruments, :except => [:index]
  resources :users

  get "/shop", to: "instruments#index"

  root to: 'welcome#index'
end
