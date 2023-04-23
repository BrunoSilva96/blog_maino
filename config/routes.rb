require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'
  
  root to: 'posts#index'

  devise_for :authors

  resources :authors, only: %i[update destroy]
  resources :posts
  resources :comments, except: %i[show update]
end
