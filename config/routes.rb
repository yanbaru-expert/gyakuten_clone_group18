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

end
