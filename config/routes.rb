RailsConfTravel::Application.routes.draw do
  resources :activities


  resources :hotels


  resources :trips


  devise_for :users

  root :to => "home#index"
end
