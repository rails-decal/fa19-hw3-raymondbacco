Rails.application.routes.draw do
  get 'cities/index'
  root 'cities#index'
  get 'cities/new' => 'cities#new'
  post '/cities/create' => 'cities#create'
  get '/cities/show' => 'cities#show'
  post 'cities/new' => 'cities#new'
  get '/cities/update' => 'cities#updateForm'
  post '/cities/update' => 'cities#update'
  resources :cities
end
