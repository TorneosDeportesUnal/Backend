class Team < ApplicationRecord
	has_many :team_players, :dependent => :destroy
	has_many :players, through: :team_players

	has_many :team_matches, :dependent => :destroy
	has_many :matches, through: :team_matches

	has_many :team_groups, :dependent => :destroy
	has_many :groups, through: :team_groups

	has_many :availavilities, :dependent => :destroy
	belongs_to :tournament
	
	
	def self.teams(page = 1, per_page = 10)
	 	includes(:team_matches, :matches, :team_groups, :team_players, :availavilities, :players)
				.paginate(:page => page, :per_page => per_page)
	end

	def self.team_by_id(id_team)
		find_by_id(id_team)
	end

	def self.teams_by_group(id_group)
		joins(:groups).where(groups:{id:id_group})
	end

	def self.team_by_id_name(idT)
		team = find_by_id(idT)
		return team.name
	end

	def self.search_q(q, page=1, per_page=10)
		select("*").where("name = ? OR coach_name = ? OR captain = ?", q, q, q)
	end

	def self.tournament_id(id_tournament)
		select("*").from("teams").where(tournament_id: id_tournament)
	end

	def self.eliminate_team(id_team)
		team = find(id_team)
		team.active = false
		team.save
	end

	def self.teams_in_team_players(team)
    	joins(:team_players).select("team_players.*").where(team_players:{team_id: team})
  	end 

	def self.teams_in_team_groups(team)
    	joins(:team_groups).select("team_groups.*").where(team_groups:{team_id: team})
  	end 

  	def self.teams_in_team_matches(team)
    	joins(:team_matches).select("team_matches.*").where(team_matches:{team_id: team})
  	end 

end
