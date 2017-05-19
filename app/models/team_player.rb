class TeamPlayer < ApplicationRecord
  belongs_to :player
  belongs_to :team
  #validates :games_played,  numericality: { only_integer: true }


  def self.delete_by_player_id(playerId)
  		select("*").where(player_id: playerId).destroy
  end

end
