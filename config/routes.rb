Rails.application.routes.draw do
  root 'pages#home'

  get '/navigation', to: 'navigation#navi'
  get '/about', to: 'pages#about'

  resources :articles

  get '/signup', to: 'users#new'
  resources :users
end