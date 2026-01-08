Rails.application.routes.draw do
  root "home#index"
  get "omikuji", to: "omikuji#show"
end
