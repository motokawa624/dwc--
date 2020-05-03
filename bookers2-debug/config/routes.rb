Rails.application.routes.draw do
  get 'home/about'
  devise_for :users
  root 'home#top'
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
  
end