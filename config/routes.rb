Rails.application.routes.draw do
  root 'root#home'
  get '/home', to: 'root#home'
  get '/beer/new', to: 'root#new-beer'
  get '/beer/:id', to: 'root#beer'
  get '/health', to: 'root#health'
  post '/api/add', to: 'root#addBeer'
end
