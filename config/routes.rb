Rails.application.routes.draw do
  root to: 'static_pages#index'

  get "/profile" => "users#profile"

  get "/auth/twitter/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout

  resources :users, :only => [:show, :index]
  resources :activities, :only => [:show, :index,:create]
end
