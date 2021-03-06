Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users
  
  get "lands/comparison" => "lands#comparison", :as => :lands_comparison
  get "lands/recommend" => "lands#recommend", :as => :lands_recommend
  get "lands/get_data_from_api" => "lands#get_data_from_api", :as => :lands_get_data_from_api
  resources :lands

  get "data_fetcher/get_data_from_java_service" => "data_fetcher#get_data_from_java_service",
  	:as => :get_data_from_java_service

end
