Rails.application.routes.draw do
  resources :gear_items, only: [:index, :show, :destroy, :create]
  get "/me", to: "users#show"
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  
end
