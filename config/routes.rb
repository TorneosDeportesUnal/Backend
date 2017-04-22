Rails.application.routes.draw do
  resources :availavilities
  resources :team_matches
  resources :matches
  resources :team_groups
  resources :groups
  resources :tournament_phases
  resources :tournaments
  resources :team_players
  resources :teams
  resources :players
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/teams_by_tournament/:id', to: 'teams#teams_by_tournament', as: 'teams_by_torneo'
  get '/team_matches_by_team/:id', to: 'team_matches#team_matches_by_team_id', as: 'team_matches_by_team_id'
  get '/team_groups_by_team_id/:id', to: 'team_groups#team_groups_by_team_id', as: 'team_groups_by_team_id'

end
