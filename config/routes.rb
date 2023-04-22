# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'posts#index'

  devise_for :authors

  resources :authors, only: %i[update destroy]
  resources :posts
  resources :comments, except: %i[show update]
end
