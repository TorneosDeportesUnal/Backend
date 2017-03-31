json.extract! team_match, :id, :outcome, :points_gained, :goals, :match_id, :team_id, :created_at, :updated_at
json.url team_match_url(team_match, format: :json)
