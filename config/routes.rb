Rails.application.routes.draw do
  devise_for :users
  get 'shift/index'
  get 'shift/create'
  root to: "shift#index"
  resources :user
  resources :shift, only: [:index, :new, :create, :edit]
  resources :days, only: [:index, :new, :create, :edit]
end
