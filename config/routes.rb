Rails.application.routes.draw do
  
  resources :posts
root to:'pages#home'
devise_for :users
end
