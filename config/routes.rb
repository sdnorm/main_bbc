Rails.application.routes.draw do

  get 'client_portal/index'

  devise_for :clients
  root 'pages#main'

  get '/contact_submission', to: 'pages#contact_submission', as: :contact_submission
  get '/email_submission', to: 'pages#email_submission', as: :email_submission

  get '/info', to: 'pages#info', as: :info

  get '/about', to: 'pages#about', as: :about

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
