class TeamGroup < ApplicationRecord
  belongs_to :group
  belongs_to :team

  def self.team_groups_by_team_id(id_team, page = 1, per_page = 10)
  	select("*").where(team_id: id_team)
  end

  def self.by_group_id(id_group)
  	select("*").where(group_id: id_group).order(:position_in_group)
  end
end
