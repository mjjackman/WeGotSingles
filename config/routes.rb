Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'users/search', to: 'customers#search'
  resources :galleries, :only => [:edit, :update]
  resources :customers, as: 'users', path: 'users', param: :username
end
