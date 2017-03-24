class Group < ApplicationRecord
  has_many :matchs
  has_many :team_groups
  has_many :teams, through: :team_groups
  belongs_to :tournament_phase
end
