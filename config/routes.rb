Rails.application.routes.draw do
  resources :twweets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "twweets#index"
end
