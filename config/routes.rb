Rails.application.routes.draw do
  resources :all_results, only: [:index]
  resources :squadrons, only: [:index, :show]
  resources :soldiers, only: [:index, :show]
  resources :planets, only: [:index, :show]
  resources :categories, only: [:index]
  resources :rebels, only: [:index]

  get 'about', to: 'about#index'

  #get 'rebels/index'
  #get 'rebels/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'rebels#index'
end
