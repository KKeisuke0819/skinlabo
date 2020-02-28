Rails.application.routes.draw do
  devise_for :admins, controllers: {
  sessions: 'admins/sessions'
  }
  devise_for :users
  namespace :admin do
    resources :users
  end
  namespace :admin do
    resources :genres
  end
  namespace :admin do
    resources :products
  end
  namespace :admin do
    get 'homes/top'
  end
  resources :users, :except => [:destroy, :index] do
    member do
      get 'bye'
    end
  end
  resources :products, only: [:new, :create, :index, :show] do
    resource :favorites, only: [:create, :destroy]
    resource :comments, only: [:create, :destroy]
  end
  delete 'users/:id', to: 'users#update_dl'
  root to: 'homes#top'
  post 'homes/search'
  get 'homes/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
