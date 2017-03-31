class Tournament < ApplicationRecord
	has_many :tournament_phases
	has_many :prizes
	belongs_to :modality	
	belongs_to :team

	def self.tournament_by_id(id_tournament)
		find_by_id(id_tournament)
	end

	def self.tournaments()
		select("*").from('tournaments')
	end

	def self.modality(id_tournament)
		joins(:modality).select("*")
	end
	
end
