Rails.application.routes.draw do
  devise_for :users, controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations'
  }

  root 'accounts#index'

  resources :posts
  resources :accounts
end
