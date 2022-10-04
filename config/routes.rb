# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
            # For categories CRUD
      get '/categories', to: 'categories#index' do
        get :image, on: :member
      end
      get '/categories/:id', to: 'categories#show' do
        get :image, on: :member
      end
      post '/add_category', to: 'categories#create'
      delete '/del_category', to: 'categories#destroy'
    end
  end
end
