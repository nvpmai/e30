Rails.application.routes.draw do
  get 'users/new'

  get 'sessions/new'

  root 'home#index'

  get '/search' => 'articles#index'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users, only: [:create]
end
