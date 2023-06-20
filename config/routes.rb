Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :pets do
    resources :reservations, only: [:create, :edit, :update, :index]
  end

  get 'user/pets', to: 'pets#user_pets', as: 'user_pets'
end
