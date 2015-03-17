Rails.application.routes.draw do
  resources :results

  resources :resultlists

  resources :yelpfinds

  resources :find_chicken_and_waffles

  resources :locations

  root to: 'visitor#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
end
