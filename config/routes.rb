Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "items#index"
resources :items, only: [:show, :index]
=======

  resources :items

>>>>>>> a2aa0cf038701500ad6ba5a4a4b1e5d354b95e02
end
