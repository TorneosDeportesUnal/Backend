class TournamentPhase < ApplicationRecord
  belongs_to :tournament
  has_many :groups

<<<<<<< Updated upstream
	def self.tournament_phases_by_id(id_tournament)
=======
	def self.tournament_phases_by_id(tournament_id)
>>>>>>> Stashed changes
		joins(:tournament).select("*")
	end

end
