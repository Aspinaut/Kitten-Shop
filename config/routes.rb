Rails.application.routes.draw do
<<<<<<< HEAD
=======

>>>>>>> active_storage
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root 'item#index'
  resources :item, :order
  resources :cart, only: [:show, :edit, :destroy]
  resources :item, only: [:show] do
    resources :pictures, only: [:create, :new]
  end
end
