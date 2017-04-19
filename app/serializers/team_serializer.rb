class TeamSerializer < ActiveModel::Serializer
  attributes :id, :coach_name, :captain, :uniform_color, :wins, :loses, :draws
  has_many :team_players
  has_many :players, through: :team_players

  has_many :team_matches
  has_many :matches, through: :team_matches

  has_many :team_groups
  has_many :groups, through: :team_groups

  has_many :availavilities
  belongs_to :tournament
end
