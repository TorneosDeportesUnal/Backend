class Group < ApplicationRecord
	belongs_to :tournament_phase
  	has_many :team_groups
  	has_many :matchs
end
