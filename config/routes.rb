Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :pets do
    resources :reservations, only: [:create, :edit, :update]
  end

end
