Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :pets do
    resources :reservations, only: [:create]
  end

  get 'user/pets', to: 'pets#user_pets', as: 'user_pets'
  get 'user/reservations', to: 'reservations#user_reservations', as: 'user_reservations'

  resources :reservations, only: [:edit, :update, :destroy]

  get 'confidentiality', to: 'pages#confidentiality'
  get 'terms', to: 'pages#terms'
  get 'site_map', to: 'pages#site_map'
  get 'site_operation', to: 'pages#site_operation'
  get 'company_info', to: 'pages#company_info'

  get '/animaux-autour', to: 'pets#animaux_autour', as: 'animaux_autour'

end
