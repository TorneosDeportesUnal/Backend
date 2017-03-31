class TournamentPhase < ApplicationRecord
  belongs_to :tournament
  has_many :groups

	def self.tournament_phases_by_id(id_tournament)
		joins(:tournament).select("*")
	end

end
