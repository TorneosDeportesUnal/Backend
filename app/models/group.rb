class Group < ApplicationRecord
  belongs_to :tournament_phase
  has_many :group_team
  has_many :match
end
