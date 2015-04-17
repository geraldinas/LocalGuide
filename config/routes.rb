Rails.application.routes.draw do

  root to: 'static_pages#index'

  get "/profile" => "users#profile"

  get "/auth/facebook/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout  
  
  resources :activities, :only => [:create, :new]

  resources :ratings, :only => [:show, :index, :create, :update]

  resources :users, :only => [:edit, :update, :show]
  
  resources :trips, :only => [:new, :show, :create, :index] 

  resources :trips do 
    resources :users, :only => [:index]
  end

  resources :tours, :only => [:create]
end