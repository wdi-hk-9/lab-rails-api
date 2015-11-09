Rails.application.routes.draw do
  root 'movies#index'

  resources :movies, only: [:show, :index, :create, :update, :destroy ]
  resources :actors, only: [:show, :index, :create, :update, :destroy ]

  namespace :api do
    resources :actors, only: [:index, :show], :defaults => { :format => 'json' }
    resources :movies, only: [:index, :show], :defaults => { :format => 'json' }
  end
end
