Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#login'
  get 'home/parent'
  get 'home/login'
  get 'posts/index'
  get 'posts/new'

  get 'about' => 'pages#about' 

  resources :posts
end
