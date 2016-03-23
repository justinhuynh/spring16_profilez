Rails.application.routes.draw do
  root "profiles#index"
  resources :profiles
  resources :users, only: [:new, :create]
end
