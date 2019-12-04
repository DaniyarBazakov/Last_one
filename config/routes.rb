Rails.application.routes.draw do


  get 'pages/menu'
  get 'bets/home'
  get 'savings/index'
  get '/graphs/home'
  post 'deposits', to: "users#deposit"
  post 'withdrawals', to: "users#withdraw"

  # get '/statistic', to: "pages#home"
  get 'horrible_facts/random', to: "horrible_facts#random", as: :random
  resources :consumptions, only: [:create, :update]
  resources :horrible_facts, only: [:index, :show,]
  resources :savings, only: [:index]
  resources :bets, only: [:index, :show, :new, :create]
  devise_for :users



  root to: 'consumptions#home'

  get "/style", to: "pages#style"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
