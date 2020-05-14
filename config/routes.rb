Rails.application.routes.draw do
  devise_for :users
  root 'userprofiles#index'
  resources :users, only: [:index, :edit, :update]
  resources :userprofiles do
    collection do
      get 'search'
    end
  end
end
