# frozen_string_literal: true

Rails.application.routes.draw do
  resources :messages, only: [:index,:new, :create]
  root to: 'messages#index'
end
