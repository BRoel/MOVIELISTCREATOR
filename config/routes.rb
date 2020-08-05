Rails.application.routes.draw do
  resources :movie_lists
  resources :movies
  resources :lists
  resources :users
  get '/register', to: 'users#new'
  post '/users', to: 'users#create'
  
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy'
  get "/auth/google_oauth2/callback", to: 'sessions#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
