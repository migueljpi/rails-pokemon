Rails.application.routes.draw do
  get "pokemons/index"
  # root to: "pages#home"
  # # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # # Render dynamic PWA files from app/views/pwa/*
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # # Defines the root path route ("/")
  # # root "posts#index"

  get "/", to: "pokemons#index", as: :root
  get "/pokemons/:id", to: "pokemons#show", as: :pokemon

  get "/trainers", to: "trainers#index", as: :trainers
  get "/trainers/:id", to: "trainers#show", as: :trainer
end
