Rails.application.routes.draw do
  root 'root#home'

  get '/health', to: 'root#health'
  get '/beer/new', to: 'root#new-beer'
  get '/beer/:id', to: 'root#beer'
  get '/contact', to: 'root#contact'
  get '/find-beer', to: 'root#findBeer'
  get '/update/:id', to: 'root#update'

  post '/api/add', to: 'root#addBeer'
  post '/api/update/:id', to: 'root#updateBeer'
  

end
