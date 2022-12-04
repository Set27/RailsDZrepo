Rails.application.routes.draw do
  root "users#index"

  resources :users
  resources :posts
  resources :comments
  resources :subscribes
  

  get 'tags/tag', to: 'posts#index', as: :tag
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
