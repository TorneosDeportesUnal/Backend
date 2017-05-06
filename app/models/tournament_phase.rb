class TournamentPhase < ApplicationRecord
  belongs_to :tournament
  has_many :groups
  accepts_nested_attributes_for :groups


	def self.tournament_phases_by_id(tournament_id,page = 1, per_page = 10)
		joins(:tournament).select("*").paginate(:page => page, :per_page => per_page)
	end

	def self.draw_groups(number_of_groups, id_tournament, phaseid)
		seed = Random.new_seed
		number_of_groups = number_of_groups.to_i
		id_tournament = id_tournament.to_i
		phaseid = phaseid.to_i
		teams = Tournament.active_teams_by_tournament_id(id_tournament)
		groups = Array.new
		for j in 0..(number_of_groups-1)
			groups.push(Array.new)
		end
		for i in seed..seed+teams.length-1
			groups[i%number_of_groups].push(teams[i%teams.length-1].id)
		end
		for i in 0..groups.length-1
			gip = Group.last.id+1
			Group.create(id: gip, name: Faker::Pokemon.name, winners_number: 2, tournament_phase_id: phaseid)
			for j in 0..groups[i%teams.length-1].length-1
				TeamGroup.create(id: TeamGroup.last.id+1, group_id: gip, team_id: groups[i%teams.length-1][j] )
			end
		end
		return groups
	end
end
