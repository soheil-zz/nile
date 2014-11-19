Nile::Application.routes.draw do
  root :to => 'home#index'

  post "/search" => 'home#search', as: "search"

  #match ':controller(/:action(/:id))(.:format)'
end
