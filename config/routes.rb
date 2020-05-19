Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'movies#index'
  resources :questions, only: [:index, :create, :show]
  resources :aws_texts, only: [:index, :show]

end
