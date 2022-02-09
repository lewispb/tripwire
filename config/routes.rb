# frozen_string_literal: true

Rails.application.routes.draw do
  resources :trips do
    resources :lists do
      resources :list_items
    end
  end

  resources :locations

  root "trips#index"
end
