Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'item#index'
  resources :item
  resources :cart
  resources :item, only: [:show] do
  resources :pictures, only: [:create, :new]
  resources :order

end
