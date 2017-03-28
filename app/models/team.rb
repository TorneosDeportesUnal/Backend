class Team < ApplicationRecord
	has_many :team_players
	has_many :availabilitys
	has_many :team_matchs
	has_many :team_groups
	has_many :prizes
	belongs_to :modality
	belongs_to :tournament	
end
