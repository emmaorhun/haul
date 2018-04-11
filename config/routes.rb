Rails.application.routes.draw do


  root 'malls#index'
  get 'malls' => 'malls#index'
  get '/malls/:id', to: 'malls#show'

  get 'products' => 'products#index'
  get 'products/:option', to: 'products#filter'
  get 'products/delete/:id' => 'products#delete'


  resources :users



end
