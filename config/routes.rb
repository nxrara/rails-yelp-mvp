Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root "restaurants#index"

  # restaurant :
  # GET "/estaurants" => index
  # GET "/restaurants/new" => new
  # POST "/restaurants" => create
  # GET "/restaurants/38" => show

  # reviews
  # GET "/restaurants/38/reviews/new" => each restaurant do review => new
  # POST "/restaurants/38/reviews" => each restaurant do review => create

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
end
