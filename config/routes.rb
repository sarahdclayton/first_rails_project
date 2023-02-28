Rails.application.routes.draw do
  root to: "main#index" 
  # GET /about 
  get 'about', to: "about#index"
  # GET /sign_up
  get 'sign_up', to: "registrations#new"
  post 'sign_up', to: "registrations#create"
  delete 'logout', to: "session#destroy"
end
