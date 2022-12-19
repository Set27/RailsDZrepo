Rails.application.routes.draw do
  root "users#index"

  resources :users
  resources :posts
  resources :comments
  resources :subscribes
  resources :tags, only: [:show]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
