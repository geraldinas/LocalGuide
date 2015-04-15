Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  root to: 'static_pages#index'

  get "/profile" => "user#profile"

  get "/map" => "country#map"
  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  get "/auth/twitter/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout

  resources :user, :only => [:show, :index]
  resources :country, :only => [:show, :index]
  
end
