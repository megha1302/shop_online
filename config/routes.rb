Rails.application.routes.draw do
  root 'pages#page'
  resources :orderproducts
  resources :orders
  resources :addresses
  resources :products
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'home',to:'pages#page'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
