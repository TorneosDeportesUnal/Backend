class TeamMatchSerializer < ActiveModel::Serializer
  attributes :id, :team_id, :match_id, :goals, :points_gained

end
