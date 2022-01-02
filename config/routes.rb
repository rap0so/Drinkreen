Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'root#home'
  get '/home', to: 'root#home'
  get '/product/:id', to: 'root#product'
  get '/health', to: 'root#health'
  # get '/home', to: 'root#home'
  # root "articles#index"
end
