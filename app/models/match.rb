class Match < ApplicationRecord
  belongs_to :group
  
  has_many :team_matches, :dependent => :destroy
  has_many :teams, through: :team_matches

  def self.matches(page = 1, per_page = 10)
  	Match.all.paginate(:page => page, :per_page => per_page)
  end

  def self.match_by_id(id_match)
  	find_by_id(id_match)
  end

  def self.matches_by_group(id_group)
    select("*").where(group_id: id_group)
  end

  def self.match_teams(id_match, page = 1, per_page = 10)
  	select("matches.winner_team, matches.loser_team").from("matches").where(matches:{id: id_match}).paginate(:page => page, :per_page => per_page)
  end

  def self.match_field(id_match, page = 1, per_page = 10)
    joins(:matches).select("matches.game_field_location").where(matches:{id: id_match}).paginate(:page => page, :per_page => per_page)
  end 

  def self.match_group(id_match, page = 1, per_page = 10)
    joins(:group).select("groups.*").where(matches:{id: id_match}).paginate(:page => page, :per_page => per_page)
  end 
end
