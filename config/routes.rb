Rails.application.routes.draw do
  root 'pages#home'

  get '/navigation', to: 'navigation#navi'
  get '/about', to: 'pages#about'

  resources :articles

  get '/signup', to: 'users#new'
  resources :users

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
 
  delete 'logout', to: 'sessions#destroy'
end