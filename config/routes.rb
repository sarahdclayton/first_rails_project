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

  
end
