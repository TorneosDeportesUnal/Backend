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
  get '/teams_by_tournament', to: 'teams#teams_by_tournament', as: 'teams_by_torneo'
  get '/team_matches_by_team', to: 'team_matches#team_matches_by_team_id', as: 'team_matches_by_team_id'
  get '/team_groups_by_team_id', to: 'team_groups#team_groups_by_team_id', as: 'team_groups_by_team_id'
  get '/team_availavilities', to: 'availavilities#team_availavilities', as: 'team_availavilities'
  get '/players_by_team', to: 'players#players_by_team', as: 'players_by_team_id'
  get '/draw_groups_random', to: 'tournament_phases#draw_groups', as: 'draw_random_groups'
  #Adding q parameter
  get 'group/search', to: 'groups#searchq', as: 'q_in_groups'
  get 'tournament/search', to: 'tournaments#searchq', as: 'q_in_tournaments'
  get 'team/search', to: 'teams#searchq', as: 'q_in_teams'
  get 'player/search', to: 'players#searchq', as: 'q_in_players'
  

end
