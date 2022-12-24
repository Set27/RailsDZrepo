Rails.application.routes.draw do
  root "posts#index"
  
  devise_for :users
  get "/users", to: "users#index"
  resources :posts
  resources :comments
  resources :subscribes
  resources :tags, only: [:show]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
