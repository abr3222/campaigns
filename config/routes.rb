Rails.application.routes.draw do
  get 'home/index'

  devise_for :users
  resources :campaigns

  # devise_for :users

  scope '/admin' do
    resources :users
  end

  resources :roles

  authenticated :user do
    root to: 'campaigns#index', as: :authenticated_root
  end
  root to: 'home#index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
