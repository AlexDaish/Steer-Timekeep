Rails.application.routes.draw do

  root "watches#index"
  resources :watches do

# GET http://localhost:3000/watches/:watch_id/orders/new
# POST <form actions= "/watches/:watch_id/orders"></form>

  	resources :orders, only: [:new, :create]
  end

 # # GET http://localhost:3000/orders/id
  resources :orders, only: :show
  resources :users, except: [:index, :show]
  resource :session
end

