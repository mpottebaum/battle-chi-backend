Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :games
  resources :players do
    resources :militia
  end
  resources :neighborhoods, only: [:index]

  mount ActionCable.server => '/cable'
end
