Rails.application.routes.draw do
  root "profiles#index"
  resources :profiles
  resources :users, only: [:new, :create]
  # resources :sessions, only: [:new, :create, :destroy]
  #
  # get '/logout' => 'sessions#destroy'
  # get '/login' => 'sessions#new'
  # get '/signup' => 'users#new'
end
