Rails.application.routes.draw do
  mount Cartify::Engine, at: '/'
  devise_for :users, controllers: { registrations: "registrations" }
  root controller: :products, action: :index
  resources :products, only: [:index, :show]
end
