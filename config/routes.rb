Rails.application.routes.draw do
  get 'products/index'
  root controller: :products, action: :index
end
