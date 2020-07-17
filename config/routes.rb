Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'movies#index'
  resources :questions do
    resources :solutions, only: [:create]
  end
  resources :aws_texts, only: [:index, :show]
  resources :live_codings, only: [:index]
  resources :talks, only: [:index]
  resources :informations, only: [:index]
  resources :movie_edits, only: [:index]
  resources :writings, only: [:index]
  resources :monetizes, only: [:index]
  resources :lines, only: [:index, :show]
  resources :texts, only: [:index, :show]

end
