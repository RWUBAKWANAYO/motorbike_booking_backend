Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  get '/user', to: 'user#index'

  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
                     controllers: {
                       sessions: 'users/sessions',
                       registrations: 'users/registrations'
                     }

  namespace :api do
    namespace :v1 do
      resources :categories
      resources :motorbikes
      resources :adverts
      resources :reservations
    end
  end
end
