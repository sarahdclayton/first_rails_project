Rails.application.routes.draw do
  root to: "main#index" 
  # GET /about 
  get 'about', to: "about#index"

  # password routes
  get "password", to: "passwords#edit", as: :edit_password 
  patch "password", to: "passwords#update"

  # GET /sign_up
  get 'sign_up', to: "registrations#new"
  post 'sign_up', to: "registrations#create"
  delete 'logout', to: "sessions#destroy"

  # sign_in form
  get 'sign_in', to: "sessions#new"
  # sign_in submission
  post 'sign_in', to: "sessions#create"

  # password reset
  get "password_reset", to: "password_resets#new"
  post "password_reset", to: "password_reset#create"
  get "password_reset_edit", to: "password_resets#new"
  patch "password_reset_edit", to: "password_reset#update"

  resources :blogs 
  
end

