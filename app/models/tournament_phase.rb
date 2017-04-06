class TournamentPhase < ApplicationRecord
  belongs_to :tournament
  has_many :groups

	def self.tournament_phases_by_id(tournament_id)
		joins(:tournament).select("*")
	end

end
