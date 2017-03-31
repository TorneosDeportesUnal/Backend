json.extract! team, :id, :name, :coach_name, :delegate, :captain, :uniform_color, :goals_against, :goals_in_favor, :goals_difference, :wins, :loses, :draws, :created_at, :updated_at
json.url team_url(team, format: :json)
