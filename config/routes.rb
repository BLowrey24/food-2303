Rails.application.routes.draw do
  root "welcome#index"

  resources :foods, only: [:index], to: "search#index"
end
