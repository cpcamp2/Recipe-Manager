Rails.application.routes.draw do
  devise_for :users
  
  resources :ratings
  get 'welcome/index'
  resources :categories
  resources :recipes
  root 'welcome#index'
end
