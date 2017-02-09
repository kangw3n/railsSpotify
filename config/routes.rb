Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'search#index'

  get 'about' => 'about#index'

  get '/track/:id', to: 'track#index'
  get '/album/:id', to: 'album#index'
  get '/artist/:id', to: 'artist#index'
  get '/top-tracks/:id', to: 'top_track#index'

end
