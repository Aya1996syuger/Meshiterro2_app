Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/index'
  get 'user/show'
  devise_for :users
  root to: 'homes#top'
  resources :books, only: [:new, :create, :index, :show, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
