Rails.application.routes.draw do

<<<<<<< HEAD
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=======
>>>>>>> 575dd2a61bc3710f467a2673f9e7fa91cde96be7
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'item#index'
  resources :item, :order
  resources :cart, only: [:show, :edit, :destroy]

  resources :item, only: [:show] do
    resources :pictures, only: [:create, :new]
  end

end
