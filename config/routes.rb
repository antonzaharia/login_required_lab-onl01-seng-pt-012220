Rails.application.routes.draw do
  get 'secrets/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#index'
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  get '/secret', to: 'secrets#show'
end
