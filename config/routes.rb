Rails.application.routes.draw do
  root "home#index"
  
  get "omikuji", to: "omikuji#show"
  resources :draw_results, only: [:index]

  devise_for :users
end
