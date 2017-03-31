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
	
	def self.teams()
		select("*")
	end

	def self.team_by_id(id_team)
		find_by_id(id_team)
	end


end
