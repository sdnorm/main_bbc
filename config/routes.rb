Rails.application.routes.draw do

  devise_for :clients
  root 'pages#main'

  get '/info', to: 'pages#info', as: :info

  get '/about', to: 'pages#about', as: :about

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
