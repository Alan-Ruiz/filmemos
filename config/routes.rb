Rails.application.routes.draw do

  root to: 'users#home'

  resources :users do
    resources :works
  end
end
