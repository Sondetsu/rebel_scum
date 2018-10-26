Rails.application.routes.draw do
  resources :all_results, only: [:index]
  resources :squadrons, only: [:index, :show]
  resources :soldiers, only: [:index, :show]
  resources :planets, only: [:index, :show]
  resources :categories, only: [:index]
  resources :rebels, only: [:index]
  resources :about, only: [:index]

  resources :search, only: [:index] do
    collection do
      get 'results'
    end
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'rebels#index'
end
