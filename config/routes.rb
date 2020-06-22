Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  get 'posts/index'
  get 'categories/index'
  get "categories/:id", to: "categories#show", as: :category
  get "posts/:id", to: "posts#show", as: :post
  get "users/:id", to: "users#show", as: :author
  root to: 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
