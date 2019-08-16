Rails.application.routes.draw do
  get 'home/index'
  get 'home/authentication'
  devise_for :users
  resources :microposts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#index'
end
