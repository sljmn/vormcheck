Rails.application.routes.draw do
  devise_for :users
  resources :users #, only: [:show]
  resources :videos do
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

   get 'home/index'
   root to: 'home#index'


end
