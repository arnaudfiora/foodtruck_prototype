Rails.application.routes.draw do

  resources :foodtrucks, except: :index do
    resources :bookings, only: %i[new create show edit update]
    resources :reviews, only: %i[new create show]
  end

  devise_for :users
  root to: 'pages#home'

  get "pages/dashboard", to: "pages#dashboard", as: "dashboard"
end
