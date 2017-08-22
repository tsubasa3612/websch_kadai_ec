Rails.application.routes.draw do

  root 'products#index'

  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}

  get 'admins/show/:name' => 'admins#show', as: 'admins_show'

  devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}

  resources :products

  resources :carts, only: [:show]

  post '/add_item' => 'carts#add_item'
  post '/update_item' => 'carts#update_item'
  delete '/delete_item' => 'carts#delete_item'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
