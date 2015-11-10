Rails.application.routes.draw do
  root 'movies#index'

  namespace :api do
    resources :movies, :actors, only:[:index, :show, :create, :update, :destroy], defaults: {:format => 'json'}
  end

  #  namespace :api do
  #   resources :actors, only:[:index, :show, :create, :update, :destroy], :defaults => {:format => 'json'}
  # end

  resources :movies, :actors

end
