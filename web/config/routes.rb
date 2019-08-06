Rails.application.routes.draw do
  get 'signup' => 'users#new', as: :signup
  post 'signup' => 'users#create'
  get 'login' => 'sessions#new', as: :login
  post 'login' => 'sessions#create'
  post 'logout' => 'sessions#destroy', as: :logout

  resources :articles, only: [:index, :show]
  resources :users, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
