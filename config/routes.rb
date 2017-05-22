Rails.application.routes.draw do
  root 'home#index'

  get '/search' => 'articles#index'
end
