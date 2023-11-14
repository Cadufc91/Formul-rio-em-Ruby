# config/routes.rb

Rails.application.routes.draw do
  get '/pessoas', to: 'pessoas#index'
  get '/pessoas/nova', to: 'pessoas#new' 
  post '/pessoas', to: 'pessoas#create' 
  resources :pessoas
end
