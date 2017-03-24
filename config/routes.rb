Rails.application.routes.draw do
  devise_for :users

  namespace :account do
    resources :groups
    resources :posts
  end

  resources :groups do
    member do
      post :join
      post :quit
    end
    resources :posts
  end
  root 'groups#index'
end
