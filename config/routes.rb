Rails.application.routes.draw do
  root 'pages#home'
  get 'pages/home', to: 'pages#home'
  get '/users/signup', to: 'users#new'
  get '/users/account', to: 'users#show_account'
  get '/users/edit', to: 'users#edit'
  get '/users/profile', to: 'users#show_profile'
  get '/users/profile/edit', to: 'users#edit_profile'
  resources :users
end
