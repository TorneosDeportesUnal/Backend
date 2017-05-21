class Tournament < ApplicationRecord
	has_many :tournament_phases, :dependent => :destroy

	has_many :teams, :dependent => :destroy

	def self.tournament_by_id(id_tournament)
		find_by_id(id_tournament)
	end

	def self.tournament_by_name(nombre, page=1, per_page=10)
		select("*").where(name: nombre)
	end

	def self.active_teams_by_tournament_id(tournament)
		joins(:teams).select("teams.id").where("tournament_id = ? AND teams.active=true", tournament)
	end

	def self.teams_by_tournament_id(tournament)
		joins(:teams).select("teams.id").where(teams:{tournament_id: tournament})
	end

	def self.tournaments(page = 1, per_page = 10)
		select("*").from('tournaments').paginate(:page => page, :per_page => per_page)
	end
	
 	def self.load_tournaments(page = 1, per_page = 10)
    	includes(:teams).paginate(:page => page, :per_page => per_page)
  	end

end
