Rails.application.routes.draw do
  resources :addresses
  resources :telephones
  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "application#start_page"
end
