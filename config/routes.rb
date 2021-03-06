SampleApp::Application.routes.draw do
  
  # Static Pages
  root 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/help', to: 'static_pages#help'
  get '/contact', to: 'static_pages#contact'

  # Users
  resources :users
  get '/signup', to: 'users#new'

  # Authentication
  resources :sessions, only: [:new, :create, :destroy]
  get '/signin',  to: 'sessions#new'
  delete '/signout', to: 'sessions#destroy'
  
end
