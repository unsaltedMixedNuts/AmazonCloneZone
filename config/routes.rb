Rails.application.routes.draw do
  # root to: "products#index"
  root to: "site#root"

  resource :session, only: [:new, :create, :destroy]
  resource :cart, only: [:show]
  resource :checkout, only: [:show]

  resources :users, only: [:new, :create]
  resources :products, only: [:index, :show]
  resources :carted_items, only: [:create, :destroy]
  resources :orders, only: [:index, :create, :show]
  resources :questions, only: [:create]

  namespace :api do
    resources :products, only: [:index, :show]
  end
end
