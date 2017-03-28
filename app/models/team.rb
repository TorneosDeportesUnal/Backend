class Team < ApplicationRecord
	has_many :team_player
	has_many :availability
	has_many :team_match
	has_many :team_group
	has_many :prize
	belongs_to :modality
	belongs_to :tournament	
end
