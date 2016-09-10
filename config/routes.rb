Rails.application.routes.draw do

  get 'homepage/index'
  get 'homepage' => 'homepage#index'
  get 'index' => 'homepage#index'
  get '/' => 'homepage#index'
  post 'fotos/new' => 'fotos#new'
  resources :fotos
  get 'signup'  => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'pages/login' => 'sessions#new'
  get 'pages/signup' => 'users#new'
  post 'homepage' => 'homepage#index'
  resources :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'homepage#index'
end
