Moviedb::Application.routes.draw do
  # get '/movies', :to => 'movies#index'
  resources :movies
end
