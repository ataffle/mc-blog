Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  get 'posts/index'
  get 'categories/index'
  devise_for :users
  root to: 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
