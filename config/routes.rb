# frozen_string_literal: true

Rails.application.routes.draw do
  resources :trips do
    resources :lists do
      resources :list_items
    end
  end

  resources :locations
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
