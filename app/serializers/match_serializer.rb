class MatchSerializer < ActiveModel::Serializer
  attributes :id, :game_field_location, :date, :winner_team, :loser_team
end
