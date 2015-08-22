Rails.application.routes.draw do
  root to: "site#root"

  namespace :api, defaults: { format: :json } do
    resource :session, only: [:show, :create, :destroy]
    resources :users, only: [:create]
    resources :products, only: [:index, :show]
    resources :questions, only: [:create]
    resources :reviews, only: [:create]
  end

  resource :session, only: [:new, :create, :destroy]
  resource :cart, only: [:show]
  resource :checkout, only: [:show]
  resources :users, only: [:new, :create]
  resources :products, only: [:index, :show]
  resources :carted_items, only: [:create, :destroy]
  resources :orders, only: [:index, :create, :show]
  resources :questions, only: [:create]
end
