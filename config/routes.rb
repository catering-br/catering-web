Rails.application.routes.draw do
  devise_for :clients, controllers: {registrations: 'clients/registrations'}

  resources :products do
    get 'buy', on: :member
  end
  resources :credit_cards
  resources :bankings
  resources :consumers
  resources :professionals
  resources :addresses
  resources :telephones
  resources :clients
  resources :main_clients do
    get 'add_product_car', on: :member
  end
  resources :cart_items
  resources :shopping_carts do
    get 'buy', on: :member
  end
  resources :pictures
  resources :payments
  resources :category_products
  resources :keywords

  get 'welcome/filter'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # authenticated :client do
  #   root to: 'products#index', as: :authenticated_root
  # end
  root to: 'welcome#index'
end
