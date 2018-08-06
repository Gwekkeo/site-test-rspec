Rails.application.routes.draw do
  get 'sessions/login'
  root 'static_pages#home'

  get '/new', to: 'users#new'
  post '/new', to: 'users#create'
  
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  
  delete '/logout', to: 'sessions#destroy'
end
