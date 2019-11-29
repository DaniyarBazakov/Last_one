Rails.application.routes.draw do

  get 'graphs/home'
  get '/statistic', to: "pages#home"
  get 'horrible_facts/random', to: "horrible_facts#random", as: :random
  resources :consumptions, only: [:create, :update]
  resources :horrible_facts, only: [:index, :show,]
  devise_for :users

  root to: 'consumptions#home'

  get "/style", to: "pages#style"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
