Rails.application.routes.draw do

  root to: 'static_pages#index'

  get "/profile" => "users#profile"

  get "/auth/facebook/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout  

  get "/trips/:id/guides" => "users#index", :as => :trip_guides
  get "/trips/:trip_id/guides/:id" => "users#guide", :as => :trip_guide

  get "/trips/:trip_id/guides/:guide_id/activities/:id" => "activities#show", :as => :guide_activity

  get "/search" => "cities#index"

  get "/guides/:id" => "users#guide_profile", :as => :guide

  resources :reviews, :only => [:create]

  resources :activities, :only => [:create, :new, :show, :update, :edit, :destroy]

  resources :ratings, :only => [:show, :index, :create, :update]

  resources :users do
    member { post  :vote }
  end
  
  resources :availabilities, :only => [:new, :create, :show, :edit, :update, :destroy] 

  resources :trips, :only => [:new, :show, :create, :index, :destroy, :update, :edit] 

  resources :notifications, :only => [:index]

  resources :locations, :only => [:index, :create, :new]

  resources :tours, :only => [:create, :update]

  resources :reviews, :only => [:create]

  # resources :cities, :only => [:index]
end