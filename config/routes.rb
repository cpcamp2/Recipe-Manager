Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  resources :recipes
  resources :ratings
  resources :users, only: [:show]
  match 'users/:id' => 'users#show', via: :get
  root 'welcome#index'

end
