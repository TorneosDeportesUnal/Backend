class Group < ApplicationRecord
	belongs_to :tournament_phase

  	has_many :matches

	has_many :team_groups
	has_many :teams, through: :team_groups  	
end
