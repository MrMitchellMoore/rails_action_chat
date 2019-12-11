# frozen_string_literal: true

Rails.application.routes.draw do
  resources :blogs, only: [:index, :show, :new, :edit]
  resources :messages, only: [:index,:new, :create]
  root to: 'messages#index'
end
