Rails.application.routes.draw do
  resources :products, only: [:show]
  mount Cartify::Engine, at: '/'
  devise_for :users, controllers: { registrations: "registrations" }
  root controller: :products, action: :index
end
