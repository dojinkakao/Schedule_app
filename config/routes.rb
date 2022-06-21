Rails.application.routes.draw do
  get '/' => 'post#index'
  get 'post/new'
  get 'post/show/:id/' => 'post#show'

  resources :posts, only: [:new, :create, :index]
end
