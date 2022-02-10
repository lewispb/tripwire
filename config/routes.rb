# frozen_string_literal: true

Rails.application.routes.draw do
  resources :trips do
    resources :lists do
      resources :list_items
    end
  end

  resources :locations

  namespace :authentication, path: "auth" do
    resource :registration, only: [ :new, :create ]
    resource :session, only: [ :new, :create ]
  end

  resolve("Authentication::Registration") { [ :authentication, :registration ] }
  resolve("Authentication::Session") { [ :authentication, :session ] }

  root "trips#index"
end
