class Availavility < ApplicationRecord
  belongs_to :team

  def self.team_availavilities(id_team)
  	select("*").where(team_id: id_team)
  end
end
