Rails.application.routes.draw do
  devise_for :users
  resources :words
  resources :users, only: :show
end