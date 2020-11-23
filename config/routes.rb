Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:show] do
    resources :footprint, only: [:new, :create, :update]
  end

  root to: 'pages#home'
  resources :challenges, only: [:index, :show] do
    resources :user_challenges, only: [:create, :update]
    resources :invites, only: [:new, :create, :update]
  end

  resources :categories
  resources :tips, only: [:index, :show]
end
