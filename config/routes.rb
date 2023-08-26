# frozen_string_literal: true

Rails.application.routes.draw do
  root 'greetings#random'
  namespace :api do
    get '/greeting', to: 'greetings#random'
  end
  resources :greetings, only: [:random], defaults: { format: 'json' } do
    collection do
      get :random
    end
  end
end
