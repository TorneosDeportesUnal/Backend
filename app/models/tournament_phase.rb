class TournamentPhase < ApplicationRecord
  belongs_to :tournament
  has_many :groups

	def self.tournament_phases_by_id(tournament_id,page = 1, per_page = 10)
		joins(:tournament).select("*").paginate(:page => page, :per_page => per_page)
	end


	def self.draw_groups(number_of_groups, teams)
		groups = Array.new
		for j in 0..number_of_groups-1
			groups.push(Array.new)
		end
		for i in 0..teams.length-1
			groups[i%number_of_groups].push(teams[i])
		end
		return groups
	end
end
