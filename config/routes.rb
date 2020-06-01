Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :games, only: [:create, :show]
  get '/games/:id/join', to: 'games#join'
  get '/games/:id/retrieve', to: 'games#retrieve'
  patch '/games/:id/fortify', to: 'games#fortify'
  patch '/games/:id/cycle', to: 'games#cycle'
  resources :players do
    resources :militia, only: [:create]
    post '/militia/card', to: 'militia#card'
    patch '/cards/trade', to: 'cards#trade'
    resources :battles, only: [:create, :update]
    patch '/battles/:id/complete', to: 'battles#complete'
    patch '/battles/:id/conquer', to: 'battles#conquer'
  end
  patch '/players/:id/fortify', to: 'players#fortify'
  resources :neighborhoods, only: [:index]

  mount ActionCable.server => '/cable'
end
