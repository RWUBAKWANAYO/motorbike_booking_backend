Rails.application.routes.draw do
  resources :adverts
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  namespace :api do
    namespace :v1 do
      resources :categories
      resources :motorbikes
      resources :adverts
    end
  end
end
