class Group < ApplicationRecord
	belongs_to :tournament_phase
  	has_many :team_group
  	has_many :match
end
