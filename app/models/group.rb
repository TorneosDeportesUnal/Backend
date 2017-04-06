class Group < ApplicationRecord
	belongs_to :tournament_phase

  	has_many :matches

	has_many :team_groups
	has_many :teams, through: :team_groups  

	def self.groups()
		Group.all
	end

	def self.group_by_id(id_group)
		find_by_id(id_group)
	end

	def self.group_teams(id_group)
		joins(:team_groups).select("teams.*").from("teams,groups").where(groups:{id: id_group})
	end 

	def self.group_matches(id_group)
		joins(:matches).select("matches.*").from("groups").where(groups:{id: id_group})
	end

	def self.group_positions(id_group)
		joins(:team_groups).select("teams.*, team_groups.position_in_group").from("teams,groups").where(groups:{id: id_group}).order("position_in_group")
	end
end
