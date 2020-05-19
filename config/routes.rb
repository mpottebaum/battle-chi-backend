Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :games
  resources :players do
    resources :militia
    resources :battles, only: [:create, :update]
    patch '/battles/:id/complete', to: 'battles#complete'
  end
  resources :neighborhoods, only: [:index]

  mount ActionCable.server => '/cable'
end
