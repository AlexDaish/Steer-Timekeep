Rails.application.routes.draw do
  root "watches#index"
  resources :watches
  resources :users, only: [:new, :create, :edit, :destroy]
end
