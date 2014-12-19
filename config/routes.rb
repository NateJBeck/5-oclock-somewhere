Rails.application.routes.draw do
  resources :countries, only: [:index]

  root "countries#index"
end
