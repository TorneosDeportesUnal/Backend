class Team < ApplicationRecord
	has_many :team_players
	has_many :players, through: :team_players

	has_many :team_matches
	has_many :matches, through: :team_matches

	has_many :team_groups
	has_many :groups, through: :team_groups

	has_many :availavilities
	belongs_to :tournament
	
	
	def self.teams(page = 1, per_page = 10)
	 	includes(:team_matches, :matches, :team_groups, :team_players, :availavilities, :players)
				.paginate(:page => page, :per_page => per_page)
	end

	def self.team_by_id(id_team)
		find_by_id(id_team)
	end

	def self.search_q(q, page=1, per_page=10)
		select("*").where("name = ? OR coach_name = ? OR captain = ?", q, q, q)
	end

	def self.tournament_id(id_tournament)
		select("*").from("teams").where(tournament_id: id_tournament)
	end

end
