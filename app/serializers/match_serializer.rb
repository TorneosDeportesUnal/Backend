class MatchSerializer < ActiveModel::Serializer
  attributes :id, :game_field_location, :date, :winner_team, :loser_team
  belongs_to :group
  
  has_many :team_matches
  has_many :matches, through: :team_matches
end
