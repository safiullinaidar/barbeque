Rails.application.routes.draw do
  root "event#index"

  resources :events
  resources :users, only: %i[show edit update]
end
