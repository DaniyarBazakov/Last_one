Rails.application.routes.draw do

  get 'graphs/home'
  resources :consumptions, only: [:create]
  resources :horrible_facts, only: [:index, :show]
  devise_for :users

  root to: 'consumptions#home'
  get '/statistic', to: "pages#home"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
