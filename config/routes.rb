Rails.application.routes.draw do
  devise_for :users
  root to: 'tops#index'
  resources :users, only: [:show, :edit, :update]
  resources :groups, only: [:show, :edit, :update]
  resources :questions, only: [:show, :create]
  resources :answers, only: [:new, :create, :edit, :update]
end
