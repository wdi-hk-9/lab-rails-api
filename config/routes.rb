Rails.application.routes.draw do
  root 'movies#index'

  resources :movies
  resources :actors

  namespace :api do
    resources :movies,
      only: [:index, :show, :create, :update, :destroy],
      :defaults => {:format => 'json'}
    resources :actors,
      only: [:index, :show, :create, :update, :destroy],
      :defaults => {:format => 'json'}
  end

end
