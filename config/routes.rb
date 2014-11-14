Nile::Application.routes.draw do
  root :to => 'home#index'

  get "search", :to => "home#search"

  #match ':controller(/:action(/:id))(.:format)'
end
