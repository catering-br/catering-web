Rails.application.routes.draw do
  devise_for :clients
  resources :main_clients
  get 'welcome/index'
  # get 'welcome/index', to: 'main_clients#index', as: 'open_main_client'

  resources :transactions
  resources :products
  resources :credit_cards
  resources :bankings
  resources :consumers
  resources :professionals
  resources :addresses
  resources :telephones
  resources :clients
  resources :main_clients

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root "application#start_page"
  root "welcome#index"
end
