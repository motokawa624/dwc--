Rails.application.routes.draw do
  get 'home/about'
  devise_for :users
  root 'home#top'
  resources :users,only: [:show,:index,:edit,:update]do
      member do
     get :following, :followers
    end
  end
  resource :relationships,only: [:create, :destroy]
  resources :books
  
end