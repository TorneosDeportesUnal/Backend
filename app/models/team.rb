class Team < ApplicationRecord
	has_many :team_players
	has_many :players, through: :team_players

	has_many :team_matches
	has_many :matches, through: :team_matches

	has_many :team_groups
	has_many :groups, through: :team_groups

	has_many :availavilities
	
	has_many :prizes
	belongs_to :modality
	belongs_to :tournament	
	
	def self.teams()
		select("*")
	end

<<<<<<< Updated upstream
	def self.team_by_id(id_team)
		find_by_id(id_team)
	end

	def self.team_matches_by_team_id(id_team)
		joins(:team_matches).select("team_matches.*").where(teams:{id: id_team})
	end

	def self.team_groups_by_team_id(id_team)
		joins(:team_groups).select("team_groups.*").where(teams:{id: id_team})
	end	

	def self.team_match_by_match_id(id_match)
		includes(:team_matches).select("team_matches.*").where(team_matches:{id: id_match})
	end

	def self.team_availavilities(id_team)
		joins(:availavilities).select("availavilities.*").where(teams:{id: id_team})
	end

	def self.team_players(id_team)
		joins(:players).select("players.*").where(teams:{id: id_team})
	end

	def self.team_modality(id_team)
		joins(:modality).select("modalities.*").where(teams:{id: id_team})
	end 
=======
	def self.team_by_id(team_id)
		find_by_id(id_team)
	end

	
>>>>>>> Stashed changes

end
