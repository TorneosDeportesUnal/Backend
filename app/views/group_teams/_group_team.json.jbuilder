json.extract! group_team, :id, :position_in_group, :wins, :loses, :group_id, :team_id, :created_at, :updated_at
json.url group_team_url(group_team, format: :json)
