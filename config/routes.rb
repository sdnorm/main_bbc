Rails.application.routes.draw do

  resources :subscriptions
  get 'charges/create'

  get 'client_portal/index'

  devise_for :clients
  root 'pages#main'

  resources :charges

  get '/contact_submission', to: 'pages#contact_submission', as: :contact_submission
  get '/email_submission', to: 'pages#email_submission', as: :email_submission

  # resources :client_portals

  get 'client-portal', to: 'companies#index', as: :client_portal

  resources :companies, except: :index

end
