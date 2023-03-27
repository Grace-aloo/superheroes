Rails.application.routes.draw do
  resources :hero_powers, only: [:create]
  resources :powers, only [:index,:show,:update]
  # resources :heros
  get '/heroes', to:"heros#index"
  get '/heroes/:id', to:"heros#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
