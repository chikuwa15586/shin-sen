Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  get "omikuji", to: "omikuji#show"
end
