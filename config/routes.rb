Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "items#index"
	resources :items, only: [:show, :index] do
		resources :carts, only: [:create, :show, :update] do
				resources :charges, only: [:new, :create, :index]
		end
	end
	resources :users do
		resources :images
	end
resources :orders, only: [:create, :show, :index]
end