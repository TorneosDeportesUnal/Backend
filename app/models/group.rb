class Group < ApplicationRecord
	belongs_to :tournament_phase, required: false
  	has_many :matches, :dependent => :destroy

	has_many :team_groups, :dependent => :destroy
	has_many :teams, through: :team_groups  

	def self.groups(page = 1, per_page = 10)
		Group.all.paginate(:page => page, :per_page => per_page)
	end

	def self.group_by_id(id_group, page = 1, per_page = 10)
		find_by_id(id_group).paginate(:page => page, :per_page => per_page)
	end

	def self.group_by_name(nombre, page = 1, per_page = 10)
		select("*").where(name: nombre)
	end	

	def self.group_teams(id_group, page = 1, per_page = 10)
		joins(:team_groups).select("team_groups.*").where(team_groups:{group_id: id_group}).paginate(:page => page, :per_page => per_page)
	end 

	def self.group_matches(id_group, page = 1, per_page = 10)
		joins(:matches).select("matches.*").from("groups").where(groups:{id: id_group}).paginate(:page => page, :per_page => per_page)
	end

	def self.group_positions(id_group, page = 1, per_page = 10)
		joins(:team_groups).select("teams.*, team_groups.position_in_group").from("teams,groups").where(groups:{id: id_group}).order("position_in_group").paginate(:page => page, :per_page => per_page)
	end

	def self.teams_in_groups(group)
		joins(:team_groups).select("team_groups.id").where(team_groups:{group_id: group})
	end

end
