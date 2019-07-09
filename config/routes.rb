Rails.application.routes.draw do
  get 'dishes/index'
  root controller: :dishes, action: :index
end
