Rails.application.routes.draw do
  devise_for :users

  get '/recipients', to: "recipients#index"
end

