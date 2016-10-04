Rails.application.routes.draw do
  devise_for :clients, controllers: {registrations: 'clients/registrations'}
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
  resources :cart_items
  resources :shopping_carts
  resources :pictures

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # authenticated :client do
  #   root to: 'products#index', as: :authenticated_root
  # end
  root to: 'welcome#index'
end
