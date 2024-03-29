Rails.application.routes.draw do
  devise_for :users
  resources :instruments, :except => [:index, :show]
  resources :users, :except => [:new]
  resources :shop, controller: 'instruments', :only => [:index, :show]

  root to: 'welcome#index'
end
