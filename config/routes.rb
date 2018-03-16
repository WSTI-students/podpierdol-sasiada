Rails.application.routes.draw do
  devise_for :users
  root to: 'complaints#index'

  get '/complaints', to: 'complaints#index'
end

