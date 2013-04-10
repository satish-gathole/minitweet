Minitweet::Engine.routes.draw do

  resources :posts

  resources :relationships

  root :to => "posts#index"

end
