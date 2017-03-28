Rails.application.routes.draw do
  resources :availavilities
  resources :team_matches
  resources :matches
  resources :team_groups
  resources :groups
  resources :tournament_phases
  resources :modalities
  resources :prizes
  resources :tournaments
  resources :team_players
  resources :teams
  resources :players
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
