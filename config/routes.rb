Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

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

  get '/tournaments_by_id', to: 'tournaments#show', as: 'tournament_by_id'
  get '/matches_by_id', to: 'matches#show', as: 'matches_by_id'
  get '/groups_by_id', to: 'groups#show', as: 'groups_by_id'
  get '/teams_by_id', to: 'teams#show', as: 'teams_by_id'
  get '/players_by_id', to: 'players#show', as: 'players_by_id'
  get '/group_status', to: 'team_groups#show_teams', as: 'group_status'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/teams_by_tournament', to: 'teams#teams_by_tournament', as: 'teams_by_torneo'
  get '/team_matches_by_team', to: 'team_matches#team_matches_by_team_id', as: 'team_matches_by_team_id'
  get '/team_groups_by_team_id', to: 'team_groups#team_groups_by_team_id', as: 'team_groups_by_team_id'
  get '/team_availavilities', to: 'availavilities#team_availavilities', as: 'team_availavilities'
  get '/players_by_team', to: 'players#players_by_team', as: 'players_by_team_id'
  get '/draw_groups_random', to: 'tournament_phases#draw_groups', as: 'draw_random_groups'
  get '/create_matches', to: 'tournament_phases#create_matches', as: 'create_matches'
  post '/eliminate_team', to: 'teams#eliminate_team', as: 'eliminate_team_id'
  get '/groups_by_tournament', to: 'groups#groups_by_t', as: "groups_by_tournament"
  get '/teams_by_group', to: 'teams#team_by_group_id', as: "team_by_group"
  get 'matches_by_group', to: 'matches#matches_by_g', as: "matches_by_group"
  get 'team_match_search', to: 'team_matches#team_match_search', as: "team_matches_search"
  get 'team_group_search', to: 'team_groups#team_group_search', as: "team_groups_search"

  

  #Adding q parameter
  get 'group/search', to: 'groups#searchq', as: 'q_in_groups'
  get 'tournament/search', to: 'tournaments#searchq', as: 'q_in_tournaments'
  get 'team/search', to: 'teams#searchq', as: 'q_in_teams'
  get 'player/search', to: 'players#searchq', as: 'q_in_players'
  

end
