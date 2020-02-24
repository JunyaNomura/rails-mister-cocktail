Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/cocktails' => 'cocktails#index'
  # get '/cocktails/new' => 'cocktails#new'
  # post '/cocktails' => 'cocktails#create'
  # get '/cocktails/:id' => 'cocktails#show'
  # get '/cocktails/:id/edit' => 'cocktails#edit'
  # patch '/cocktails/:id' => 'cocktails#update'
  # delete '/cocktails/:id' => 'cocktails#destroy'

  # get '/ingredients' => 'ingredients#index'
  # get '/ingredients/new' => 'ingredients#new'
  # post '/ingredients' => 'ingredients#create'
  # get '/ingredients/:id' => 'ingredients#show'
  # get '/ingredients/:id/edit' => 'ingredients#edit'
  # patch '/ingredients/:id' => 'ingredients#update'
  # delete '/ingredients/:id' => 'ingredients#destroy'
  root to: "cocktails#index"
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create]
  end
  resources :doses, only: [:destroy]
end
