Rails.application.routes.draw do
  resources :availavilities
  resources :gamefields
  resources :match_teams
  resources :matches
  resources :group_teams
  resources :groups
  resources :tournament_phases
  resources :modalities
  resources :tournaments
  resources :team_players
  resources :teams
  resources :players
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
