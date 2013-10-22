Nile::Application.routes.draw do
  root :to => 'home#index'

  get 'search', :to => "search#search"

  #match ':controller(/:action(/:id))(.:format)'
end
