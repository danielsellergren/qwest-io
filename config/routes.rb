Rails.application.routes.draw do
  # Root for Welcome/Marketing page.
  root "pages#home"

  # Devise for authentication, includes OmniauthController for callbacks.
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth' }

  # Public route for Users.
  resources :users, only: [:show]
end
