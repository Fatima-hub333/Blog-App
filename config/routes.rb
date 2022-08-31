Rails.application.routes.draw do
  devise_for :users, defaults: { format: :html }
  
  get 'sign_in', to: 'users/sessions#new'
  root 'users#index'

  resources :users, only: [:index, :show, :new, :create] do
    resources :posts, only: [:index, :show, :new, :create, :destroy] do
      resources :comments, only: [:new, :create, :destroy]
      resources :likes, only: [:create]
    end
  end
  
end
