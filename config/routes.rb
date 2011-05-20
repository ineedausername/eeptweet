Eeptweet::Application.routes.draw do

  root :to => "users#index"
  devise_for :users
  resources :users
  resources :eeps



  #get "users/index"
  #get "users/new"
  #get "users/create"
  #get "users/edit"
  #get "users/show"
end

