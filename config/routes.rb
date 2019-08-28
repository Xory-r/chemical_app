Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
    }
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
end
