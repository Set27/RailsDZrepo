Rails.application.routes.draw do
  root "posts#index"
  
  devise_for :users
  resources :users do 
    member do
      post :subscribe
      post :unsubscribe
    end
  end
  resources :posts
  resources :comments
  # resources :posts do
  #   resources :comments
  # end
  # not work


  resources :subscribes
  resources :tags, only: [:show]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
