Rails.application.routes.draw do
  resources :ratings, :only => [:show, :index, :create, :update]

  root to: 'static_pages#index'


  get "/profile" => "users#profile"


  get "/auth/facebook/callback" => "sessions#create"
  get "/trip" => "users#trip"

  get "/all_trips" => "users#all_trips"
  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  # get "/auth/twitter/callback" => "sessions#create"
  # get "/signout" => "sessions#destroy", :as => :signout

  # resources :user, :only => [:show, :index]
  # resources :country, :only => [:show, :index]

  # get "/profile" => "users#profile"

  get "/signout" => "sessions#destroy", :as => :signout

  resources :users, :only => [:show, :index]
  resources :activities, :only => [:show, :index,:create]

end
