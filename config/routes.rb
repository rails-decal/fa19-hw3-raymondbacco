Rails.application.routes.draw do
  root 'main#index'
  get '/main/index' => 'main#index'
  get '/cities/index' => 'cities#index'
  get 'cities/new' => 'cities#new'
  get 'cities/create' => 'cities#new'
  post '/cities/create' => 'cities#create'
  get '/cities/show' => 'cities#show'
  post 'cities/new' => 'cities#new'
  get '/cities/update' => 'cities#updateForm'
  post '/cities/update' => 'cities#update'
  #resources :cities
end
