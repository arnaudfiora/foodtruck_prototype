Rails.application.routes.draw do


  resources :foodtrucks do
    resources :bookings, only: %i[new create show]
  end

  devise_for :users
  root to: 'pages#home'

  get "pages/dashboard", to: "pages#dashboard", as: "dashboard"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
