Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  resources :recipes do
    resources :ratings
  end
  resources :users
  root 'welcome#index'

end
