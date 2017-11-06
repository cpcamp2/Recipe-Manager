Rails.application.routes.draw do
  resources :ratings
  get 'welcome/index'
  resources :categories
  resources :recipes
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
