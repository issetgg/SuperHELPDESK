SuperSimpleHELPDESK::Application.routes.draw do

  resources :assignations
  resources :categories
  resources :tickets
  resources :users
  resources :user_sessions
  resource :users, :as => 'account' 

  match 'home' => "reports#index",           :as => :home
  match 'login' => "user_sessions#new",      :as => :login
  match 'logout' => "user_sessions#destroy", :as => :logout
 end
