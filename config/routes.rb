Rails.application.routes.draw do
  root 'posts#index'

  resources :users
  resources :posts

  get 'signup', to: 'users#new', as: 'signup'
end
