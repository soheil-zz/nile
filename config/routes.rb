Nile::Application.routes.draw do
  root :to => 'home#index'
  match 'search' => 'home#search'

  #match ':controller(/:action(/:id))(.:format)'
end
