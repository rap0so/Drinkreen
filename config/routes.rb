Rails.application.routes.draw do
  root 'root#home'

  get '/health', to: 'root#health'
  get '/beer/new', to: 'root#new-beer'
  get '/beer/:id', to: 'root#beer'
  get '/contact', to: 'root#contact'

  post '/api/add', to: 'root#addBeer'
  get '/find-beer', to: 'root#findBeer'
  

end
