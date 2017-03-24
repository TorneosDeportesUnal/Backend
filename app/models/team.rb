class Team < ApplicationRecord
	has_many :team_player
	has_many :availability
	has_many :match_team
	has_many :group_team
	belongs_to :modality
	belongs_to :tournament
		
end
