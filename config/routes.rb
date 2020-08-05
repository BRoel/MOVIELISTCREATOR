Rails.application.routes.draw do
  resources :movie_lists
  resources :movies
  resources :lists
  resources :users
  root 'sessions#home'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get "/auth/google_oauth2/callback", to: 'sessions#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
