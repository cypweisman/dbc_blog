#Rails.application.routes.draw do
Blog::Application.routes.draw do
  #get "/posts" => "posts#index"
  # ROUTE => CODE THAT EXECUTES
 # get "/posts/:id" => "posts#show"
 # post "/posts" => "posts#create"

  get "/" => "posts#index"

  resources :posts, only: [:index, :show]
  #resources :users, only [:show, :new, :create]

  resources :users, only: [:new, :create] do
    resources :posts, only: [:index, :new, :create, :edit, :update, :destroy]
  end

  resources :sessions, only: [:new, :create, :destroy]
end
