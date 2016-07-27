Nile::Application.routes.draw do
  root :to => 'home#index'

  #match ':controller(/:action(/:id))(.:format)'
  get '/search' => 'home#search'
end
