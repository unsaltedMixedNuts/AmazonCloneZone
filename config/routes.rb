Rails.application.routes.draw do
  root to: "products#index"
  resource :session, only: [:new, :create, :destroy]

  resources :users, only: [:new, :create]
  resources :products, only: [:index, :show]
end
