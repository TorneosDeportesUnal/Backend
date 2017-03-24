Rails.application.routes.draw do
  resources :modalities
  resources :tournaments
  resources :tournament_phases
  resources :groups
  resources :game_fields
  resources :matches
  resources :teams
  resources :availabilities
  resources :players
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
