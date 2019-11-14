Rails.application.routes.draw do

  resources :agents
  resources :users

  root 'users#index'
end
