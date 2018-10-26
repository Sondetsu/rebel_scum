Rails.application.routes.draw do
  get 'all_results/index'
  get 'soldiers/index'
  get 'soldiers/show'
  get 'planets/index'
  get 'planets/show'
  get 'squadrons/index'
  get 'squadrons/show'
  get 'squadron/index'
  get 'squadron/show'
  get 'categories/index'
  resources :rebels, only: [:index]
  resources :students, only: [:index, :show]

  get 'about', to: 'about#index'

  #get 'rebels/index'
  #get 'rebels/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'rebels#index'
end
