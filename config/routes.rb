Rails.application.routes.draw do
  resources :rebels, only: [:index]

  get 'about', to: 'about#index'

  #get 'rebels/index'
  #get 'rebels/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'rebels#index'
end
