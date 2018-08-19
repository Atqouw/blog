Rails.application.routes.draw do

  devise_for :users
  root 'posts#index'
  resources :posts, only: [:show, :index]
  resources :tags, only: [:show]
  resources :categories, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :admin do
    resources :posts, except: [:show, :index]
    resources :categories, except: [:show]
  end
end
