Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "items#index"
resources :items, only: [:show, :index] do
	resources :carts, only: [:create, :show]
end
resources :charges
resources :users
resources :orders
end
