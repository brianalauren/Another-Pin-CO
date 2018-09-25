Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #we want to see multiple products
  resources :products

  get "info", to: "pages#info"



# this is the home page
  root "pages#home"






end
