CaptainsLog::Application.routes.draw do
  ## Devise
  devise_for :users, :skip => [:registrations]
  as :user do
    get 'users/edit', to: 'devise/registrations#edit', as: 'edit_user_registration'
    put 'users', to: 'devise/registrations#update', as: 'user_registration'
  end

  ## API V1
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :events
    end
  end

  get  '/api', to: 'api/v1/events#index'
  post '/api', to: 'api/v1/events#create'

  ## Events
  get '/events/search/', to: 'events#search'
  resources :events

  resources :users
  ## API Keys
  resources :api_keys, only: [:index, :new, :create, :destroy]

  ## Static Pages
  root 'static_pages#home'
  match '/about', to: 'static_pages#about', via: 'get'
end
