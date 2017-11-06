Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  resources :categories
  resources :recipes
  resources :ratings
  root 'welcome#index'
end
