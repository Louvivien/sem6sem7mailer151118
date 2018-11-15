Rails.application.routes.draw do
  root 'home#home'
  resources :users
  post '/search', to: 'movies#index'
  get '/search', to: 'movies#search'
  get '/index', to: 'users#index'
  get '/about', to: 'movies#about'
  get '/contact', to: 'movies#contact'
end
