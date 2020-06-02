Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  get 'posts/index'
  get 'categories/index'
  get "categories/:id", to: "categories#show", as: :category
  get "posts/:id", to: "posts#show", as: :post
  get "users/:id", to: "users#show", as: :author
  devise_for :users
  # resources :users do
  #   resources :posts, only: [:show]
  # end
  root to: 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
