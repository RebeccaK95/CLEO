Rails.application.routes.draw do

  devise_for :users

  unauthenticated do
    root :to => 'pages#home'
  end

  authenticated do
    root to: "pages#dashboard", as: "dashboard"
  end

  resources :users, only: [:show, :edit, :update] do
    resources :footprint, only: [:new, :create, :update]
  end

  post '/users/:id/follow', to: "users#follow", as: "follow_user"
  post '/users/:id/unfollow', to: "users#unfollow", as: "unfollow_user"

  resources :challenges, only: [:index, :show] do
    resources :user_challenges, only: [:create, :update]
    resources :invites, only: [:new, :create, :update, :destroy]
  end
  resources :user_challenge_steps, only: [:update]

  resources :categories
  resources :tips, only: [:index, :show]
  resources :friendships, only: [:index, :new, :create, :update, :destroy]
end
