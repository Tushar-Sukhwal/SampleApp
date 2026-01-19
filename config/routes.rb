Rails.application.routes.draw do
  get "sessions/new"
  get "users/new"
  get "/signup", to: "users#new"

  get "up" => "rails/health#show", as: :rails_health_check

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "static_pages/contact"
  # get "static_pages/home"
  get "home", to: "static_pages#home"        # yeh bhi tarika h lekin ab link to home_path karna pdega
  get "static_pages/login"
  get "static_pages/help"
  get "static_pages/about"      # iska matlab h ki static_pages/about jab hit hoga controller static_pages_controller ke about action pe jayega
  root "static_pages#home"
  resources :users
end
