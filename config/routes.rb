Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
# Set the index action as the root path.
  root 'customers#index'

  # Custom routes for other customer views.
  get 'customers/alphabetized', to: 'customers#alphabetized', as: 'customers_alphabetized'
  get 'customers/missing_email', to: 'customers#missing_email', as: 'customers_missing_email'
  
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
