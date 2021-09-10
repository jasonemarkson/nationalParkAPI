Rails.application.routes.draw do
  resources :attractions
  resources :saved_parks
  resources :users do
    resources :parks
  end
  resources :images, only: [:index, :show, :create, :destroy]
  resources :parks, only: [:index, :show, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
