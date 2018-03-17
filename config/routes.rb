Rails.application.routes.draw do
  devise_for :users
  root to: 'complaints#index'

  get '/complaints', to: 'complaints#index'
  get '/new', to: 'complaints#new'
  get '/confirm_complaint/:complaint_id', to: 'complaints#confirm',
                                          as: 'confirm_complaint'
end

