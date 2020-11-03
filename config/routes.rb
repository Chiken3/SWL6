Rails.application.routes.draw do
  get 'top/login_form'
  get 'top/logout'
  post 'top/login'
  resources :tweets
  resources :users
  root 'tweets#index'
  resources :likes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
