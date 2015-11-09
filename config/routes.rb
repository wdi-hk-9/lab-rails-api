Rails.application.routes.draw do
  root 'movies#index'

  namespace :api do
    resources :movies, only:[:index, :show, :create, :update, :destroy], :defaults => {:format => 'json'}
  end

  resources :movies
  resources :actors
end
