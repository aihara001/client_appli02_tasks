Rails.application.routes.draw do

  root 'sessions#new'
  resources :tasks
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :clients do
    collection do
      post :confirm
    end
  end
end
