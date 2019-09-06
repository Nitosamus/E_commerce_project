Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "items#index"
resources :items, only: [:show, :index] do
	resources :carts, only: [:create, :show]
end
resources :charges
resources :users do
	resources :images, only: [:create]
end
resources :orders

end
root to: "items#index"
	resources :items, only: [:show, :index] do
		resources :carts, only: [:create, :show] do
				resources :charges, only: [:new, :create, :index]
		end
	end
resources :orders, only: [:create, :show, :index]
resources :users
end