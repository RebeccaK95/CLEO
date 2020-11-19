Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :challenges, only: [:index, :show] do
    resources :user_challenges, only: [:create, :update]
  end

  resources :categories
  resources :tips, only: [:index, :show]
  resources :users, only: [:show] do
    resources :footprint, only: [:new, :create, :update]
  end
end
