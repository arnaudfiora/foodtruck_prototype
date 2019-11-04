Rails.application.routes.draw do
  get 'foodtrucks/index'
  get 'foodtrucks/show'
  get 'foodtrucks/new'
  get 'foodtrucks/create'
  get 'foodtrucks/update'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
