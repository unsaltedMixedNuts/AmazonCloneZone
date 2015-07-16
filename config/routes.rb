Rails.application.routes.draw do
  root to: "products#index"

  resource :session, only: [:new, :create, :destroy]
  resource :cart, only: [:show]
  resource :checkout, only: [:show]
  resource :confirmation, only: [:show]

  resources :users, only: [:new, :create]
  resources :products, only: [:index, :show]
  resources :carted_items, only: [:create, :destroy]
  resources :orders, only: [:create, :show]
end
