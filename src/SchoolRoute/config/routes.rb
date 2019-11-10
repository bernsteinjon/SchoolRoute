Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'sessiosn#new'
  root 'home#login'
  get 'home/parent'
  get 'home/admin'
  get 'home/login'
  get 'posts/index'
  get 'posts/new'
  get 'home/v1'
  get 'home/v2'
  get 'home/v3'
  get 'home/v4'
  get 'parents/index'
  get 'parents/new'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :parents
  resources :students

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get 'about' => 'pages#about' 

  resources :posts
end
