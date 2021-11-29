Rails.application.routes.draw do
  resources :user_gear_items
  resources :names
  get "/me", to: "users#show"
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  
end
