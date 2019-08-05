Rails.application.routes.draw do
  get 'login' => 'sessions#new', as: :login
  post 'login' => 'sessions#create'
  post 'logout' => 'sessions#destroy', as: :logout

  resources :articles
end
