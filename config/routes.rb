Rails.application.routes.draw do
  root 'movies#index'

  namespace :api do
    resources :movies, only: [:index, :show], :defaults => {:format => 'json'}
  end

  namespace :api do
    resources :actors, only: [:index, :show], :defaults => {:format => 'json'}
  end
end
