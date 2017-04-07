class Modality < ApplicationRecord
  has_many :tournaments
  has_many :teams
  validates :gender, inclusion: { in: %w(masculino femenino),
    	message: "masculino o femenino" }



	def self.modality_by_tournament_id(id_tournament, page = 1, per_page = 10)
		includes(:tournaments).select("tournaments.*, modalities.*").from("tournaments, modalities").where("modalities.tournament_id=tournaments.id").paginate(:page => page, :per_page => per_page)
	end
	
	def self.modality_by_team_id(id_team, page = 1, per_page = 10)
		includes(:teams).select("teams.*, modalities.*").from("teams, modalities").where("modalities.team_id=teams.id").paginate(:page => page, :per_page => per_page)
	end

	def self.modality_by_id(tournament_id, page = 1, per_page = 10)
		joins(:tournaments).select("*").paginate(:page => page, :per_page => per_page)

	end
end
