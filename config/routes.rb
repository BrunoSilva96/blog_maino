# frozen_string_literal: true

Rails.application.routes.draw do
  get 'welcome/index'
  get 'inicio', to: 'welcome#index'

  root to: 'welcome#index'
  devise_for :users do
  get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :authors
  resources :posts
  resources :comments

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
