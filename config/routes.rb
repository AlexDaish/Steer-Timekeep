Rails.application.routes.draw do

  get 'orders/new'

  get 'orders/show'

  root "watches#index"
  resources :watches
  resources :users, only: [:new, :create, :edit, :destroy]
  resource :session
end

