class Tournament < ApplicationRecord
	has_many :tournament_phases

	belongs_to :team

	def self.tournament_by_id(id_tournament)
		find_by_id(id_tournament)
	end

	def self.tournaments(page = 1, per_page = 10)
		select("*").from('tournaments').paginate(:page => page, :per_page => per_page)
	end
	
 	def self.load_tournaments(page = 1, per_page = 10)
    	includes(:teams).paginate(:page => page, :per_page => per_page)
  	end

end
