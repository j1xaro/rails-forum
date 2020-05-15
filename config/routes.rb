Rails.application.routes.draw do
  
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :posts do
    resources :comments
  end
root to:'pages#home'

end
