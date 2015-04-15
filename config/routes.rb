Rails.application.routes.draw do
  root to: 'static_pages#index'


  get "/profile" => "users#profile"

  get "/trip" => "users#trip"
  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  # get "/auth/twitter/callback" => "sessions#create"
  # get "/signout" => "sessions#destroy", :as => :signout

  # resources :user, :only => [:show, :index]
  # resources :country, :only => [:show, :index]

  # get "/profile" => "users#profile"

  get "/auth/twitter/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout

  resources :users, :only => [:show, :index]
  resources :activities, :only => [:show, :index,:create]

end
