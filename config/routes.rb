Rails.application.routes.draw do

  devise_for :users
  root to: 'users#home'

  resources :users do
    resources :works
  end

  root 'sessions#new'
  #temporary root path for now

  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :destroy, :create]

end
