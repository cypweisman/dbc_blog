#Rails.application.routes.draw do
Blog::Application.routes.draw do
  #get "/posts" => "posts#index"
  # ROUTE => CODE THAT EXECUTES
 # get "/posts/:id" => "posts#show"
 # post "/posts" => "posts#create"

  resources :posts, only: [:index, :show]
  #resources :users, only [:show, :new, :create]

  resources :users do
    resources :posts, only: [:index, :new, :create, :edit, :update, :destroy]
  end
end
