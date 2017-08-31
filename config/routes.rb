Rails.application.routes.draw do

  get 'users/purchase'

  get 'user/purchase'

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

  post 'users/confirm' => 'users#confirm'

  resources :products

  get '/products/:id/purchase' => 'products#purchase', as: 'product_purchase'
  post '/products/:id/purchase/confirm' => 'products#confirm'
  post '/products/:id/purchase/thanks' => 'products#thanks'

  resources :carts, only: [:show]

  post '/add_item' => 'carts#add_item'
  post '/update_item' => 'carts#update_item'
  delete '/delete_item' => 'carts#delete_item'

  resource :purchases, only: [:new, :create]

  patch 'purchases/new' => 'purchases#new'
  post 'purchases/confirm/:id' => 'purchases#confirm', as: 'purchases_confirm'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
