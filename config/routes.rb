Rails.application.routes.draw do
  get 'welcome/index'

  resources :transactions
  resources :products
  resources :credit_cards
  resources :bankings
  resources :consumers
  resources :professionals
  resources :addresses
  resources :telephones
  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root "application#start_page"
  root "welcome#index"
end
