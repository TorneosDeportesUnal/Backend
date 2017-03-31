class Team < ApplicationRecord
	has_many :team_players
	has_many :players, through: :team_players

	has_many :team_matches
	has_many :matches, through: :team_matches

	has_many :team_groups
	has_many :groups, through: :team_groups

	has_many :availabilities
	
	has_many :prizes
	belongs_to :modality
	belongs_to :tournament	
	
end
