Rails.application.routes.draw do
  # Root
  root "home#index"
  resources :home
end
