class TournamentPhase < ApplicationRecord
  belongs_to :tournament
  has_many :groups

	def self.tournament_phases_by_id(tournament_id,page = 1, per_page = 10)
		joins(:tournament).select("*").paginate(:page => page, :per_page => per_page)
	end

end
