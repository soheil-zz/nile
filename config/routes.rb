Nile::Application.routes.draw do
  root :to => 'home#index'
  match '/home/search', :to => 'home#search', :via => :post
  #match ':controller(/:action(/:id))(.:format)'
end
