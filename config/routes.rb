Nile::Application.routes.draw do
  root :to => 'home#index'

  resources :books
  #match ':controller(/:action(/:id))(.:format)'
end
