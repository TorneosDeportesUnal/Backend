class MatchSerializer < ActiveModel::Serializer
  attributes :id, :game_field_location, :date, :judges, :group_id, :winner_team, :loser_team, :teams
end
