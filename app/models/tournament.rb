class Tournament < ApplicationRecord
	has_many :tournament_phases
	has_many :prizes

	belongs_to :team

	def self.tournament_by_id(id_tournament)
		find_by_id(id_tournament)
	end

	def self.tournaments(page = 1, per_page = 10)
		select("*").from('tournaments').paginate(:page => page, :per_page => per_page)
	end

	def self.modality(id_tournament,page = 1, per_page = 10)
		joins(:modality).select("*").paginate(:page => page, :per_page => per_page)
	end
	
 	def self.load_tournaments(page = 1, per_page = 10)
    	includes(:teams).paginate(:page => page, :per_page => per_page)
  	end

  def self.tournaments_by_modalities(page = 1, per_page = 10)
    joins(:modality).select("tournaments.*")
      .group("tournaments.id").paginate(:page => page, :per_page => per_page)
  end
	
	def self.tournament_femenino(page = 1, per_page = 10)
		joins(:modality).select("*").where(modalities:{ gender:"femenino" } ).paginate(:page => page, :per_page => per_page)
	end

	def self.tournament_masculino(page = 1, per_page = 10)
		joins(:modality).select("*").where(modalities:{ gender:"masculino" } ).paginate(:page => page, :per_page => per_page)
	end

end
