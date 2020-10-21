Rails.application.routes.draw do
  use_doorkeeper
  root to: 'main#dashboard'

  devise_for :users
  resources :users, only: :index
end
