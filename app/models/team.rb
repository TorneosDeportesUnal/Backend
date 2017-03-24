class Team < ApplicationRecord
	has_many :team_players
	has_many :players, through: :team_players
	has_many :availabilities
	has_and_belongs_to_many :matches
	has_many :team_groups
	has_many :groups, through: :team_groups
	belongs_to :tournament
	belongs_to :modality

end
