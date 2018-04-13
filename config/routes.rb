Rails.application.routes.draw do

  root 'malls#index'
  get 'malls' => 'malls#index'
  get '/malls/:id', to: 'malls#show'

  get 'products' => 'products#index'
  get 'products/filter'
  get 'products/delete/:id' => 'products#delete'

  get 'users/:id' => 'users#cart'

  resources :users


end
