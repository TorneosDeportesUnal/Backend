class Tournament < ApplicationRecord
	has_many :tournament_phases
	has_many :prizes
	belongs_to :modality	
	belongs_to :team

<<<<<<< Updated upstream
	def self.tournament_by_id(id_tournament)
		find_by_id(id_tournament)
	end

	def self.tournaments()
		select("*").from('tournaments')
	end

	def self.modality(id_tournament)
		joins(:modality).select("*")
	end
	
=======
 	def self.load_tournaments()
    	includes(:teams)
  	end

 	def self.tournaments_by_id(id)
    	includes(:teams).find_by_id(id)  
  	end

  def self.tournaments_by_modalities()
    joins(:modality).select("tournaments.*")
      .group("tournaments.id")
  end
	
	def self.tournament_femenino()
		joins(:modality).select("*").where(modalities:{ gender:"femenino" } )
	end

	def self.tournament_masculino()
		joins(:modality).select("*").where(modalities:{ gender:"masculino" } )
	end

>>>>>>> Stashed changes
end
