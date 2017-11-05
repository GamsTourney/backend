Rails.application.routes.draw do
  resources :matches, defaults: {format: :json}
  resources :tournaments, defaults: {format: :json}
  resources :players, defaults: {format: :json}
  resources :games, defaults: {format: :json}
end
