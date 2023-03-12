Rails.application.routes.draw do
  resources :events
  resources :users
  resources :parts
  mount_devise_token_auth_for 'User', at: 'auth', controllers: {
    registrations: 'auth/registrations'
  }
  namespace :auth do
    resources :sessions, only: %i[index]
  end
end
