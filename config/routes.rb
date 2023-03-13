Rails.application.routes.draw do
  resources :events
  resources :users do
    collection do
      put ':id', to: 'users#use_permit'
    end
  end
  resources :parts
  mount_devise_token_auth_for 'User', at: 'auth', controllers: {
    registrations: 'auth/registrations'
  }
  namespace :auth do
    resources :sessions, only: %i[index]
  end
end
