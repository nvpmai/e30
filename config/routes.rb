Rails.application.routes.draw do
  get 'users/new'

  get 'sessions/new'

  root 'home#index'

  get    '/login' => 'sessions#new'
  post   '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  resources :users, only: [:create]
  resources :articles, only: [:index, :show]

  post '/toggle_like' => 'users#toggle_like'

  namespace :admin do
    root 'articles#index'
    resources :articles
  end
end
