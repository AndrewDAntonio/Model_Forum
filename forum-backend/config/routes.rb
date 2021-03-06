Rails.application.routes.draw do
  post 'login', to: 'auth#login'
  get "/autologin", to: "auth#autologin"
  post "/logout", to: "auth#logout"
  
  resources :comments
  resources :posts
  resources :boards
  resources :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
