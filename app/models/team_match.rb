class TeamMatch < ApplicationRecord
  belongs_to :match
  belongs_to :team


	def self.team_matches_by_team_id(team, page = 1, per_page = 10)
		select("*").where(team_id: team)
	end

end
