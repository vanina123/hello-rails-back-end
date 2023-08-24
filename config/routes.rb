# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'greetings#random'

  resources :greetings, only: [:random], defaults: { format: 'json' } do
    collection do
      get :random
    end
  end
end
