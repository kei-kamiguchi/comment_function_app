Rails.application.routes.draw do
  resources :blogs
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :blogs do
    resources :comments
  end
end
