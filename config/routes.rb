Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :challenges, only: [:index, :show] do
    resources :user_challenges, only: [:create, :update]
  end

  resources :categories do
    resources :tips, only: [:index, :show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
