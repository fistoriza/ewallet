Rails.application.routes.draw do
  resources :expenses
  resources :categories
  devise_for :users
  root 'wallets#index'
  resources :wallets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
