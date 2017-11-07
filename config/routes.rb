Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  resources :recipes
  resources :ratings
  resources :users
  root 'welcome#index'

end
