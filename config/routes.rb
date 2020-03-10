Rails.application.routes.draw do
  resources :words
  resources :categories
  resources :dashboard, only: [:index]
end