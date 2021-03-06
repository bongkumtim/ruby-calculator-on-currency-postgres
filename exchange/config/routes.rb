Rails.application.routes.draw do
 mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations'
  }
 

  root 'accounts#index'

  resources :posts
  resources :accounts

  get "/topup" => "accounts#topup"
end
