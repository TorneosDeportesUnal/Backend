class Modality < ApplicationRecord
  has_many :tournaments
  has_many :teams
  validates :gender, inclusion: { in: %w(masculino femenino),
    	message: "masculino o femenino" }


<<<<<<< Updated upstream
	def self.modality_by_tournament_id(id_tournament)
		includes(:tournaments).select("tournaments.*, modalities.*").from("tournaments, modalities").where("modalities.tournament_id=tournaments.id")
	end
	
	def self.modality_by_team_id(id_team)
		includes(:teams).select("teams.*, modalities.*").from("teams, modalities").where("modalities.team_id=teams.id")
=======
	def self.modality_by_id(tournament_id)
		joins(:tournaments).select("*")
>>>>>>> Stashed changes
	end
end
