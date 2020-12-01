Rails.application.routes.draw do
  get 'home/index'

  get '/search' => 'campaigns#search', :as => 'search_page'

  devise_for :users
  resources :campaigns do
    resources :comments
    get 'tags/:tag', to: 'campaigns#index', as: :tag
    resources :tags
    resources :todo_items do
      member do
        # patch :complete
        get :complete
      end
    end
  end

  # devise_for :users

  scope '/admin' do
    resources :users
  end

  resources :roles

  authenticated :user do
    root to: 'campaigns#index', as: :authenticated_root
  end
  root to: 'campaigns#index' # Both redirect to same



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
