Rails.application.routes.draw do

  resources :consumptions, only: [:create]
  resources :horrible_facts, only: [:index, :show]
  resources :pages, only: [:alltimeappuse, :consumptionforjs]
  devise_for :users
  root to: 'consumptions#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
