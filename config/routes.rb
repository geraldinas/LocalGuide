Rails.application.routes.draw do

  root to: 'static_pages#index'

  get "/profile" => "users#profile"

  get "/auth/facebook/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout  

  get "/trips/:id/guides" => "users#index", :as => :trip_guides
  get "/trips/:trip_id/guides/:id" => "users#guide", :as => :trip_guide

  get "/trips/:trip_id/guides/:guide_id/activities/:id" => "activities#show", :as => :guide_activity
  
  #get "/guides/:guide_id/availabilities/:id" => "availabilities#new", :as => :guide_availability
  #http://localhost:3000/guides/:guide_id/availabilities/:availability_id
  
  resources :activities, :only => [:create, :new, :show, :update, :edit, :destroy]

  resources :ratings, :only => [:show, :index, :create, :update]

  resources :users, :only => [:edit, :update, :show]
  
  resources :availabilities, :only => [:new, :create, :show] 

  resources :trips, :only => [:new, :show, :create, :index, :destroy] 

  resources :notifications, :only => [:index]

  resources :locations, :only => [:index, :create, :new]

  resources :tours, :only => [:create, :update]
end