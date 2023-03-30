Rails.application.routes.draw do
  get "about-us", to: "about#index", as: :about

  get "password", to: "password#edit", as: :edit_password
  patch "password", to: "password#update"

  get "sign-up", to: "registrations#new"
  post "sign-up", to: "registrations#create"

  get "sign-in", to: "sessions#new"
  post "sign-in", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  get "password/reset", to: "password_reset#new"
  post "password/reset", to: "password_reset#create"
  get "password/reset/edit", to: "password_reset#edit"
  patch "password/reset/edit", to: "password_reset#update"

  root "main#index"
end
