Nile::Application.routes.draw do
  root :to => 'home#index'
  get '/home/show_selected_books', to: 'home#show_selected_books'

  #match ':controller(/:action(/:id))(.:format)'
end
