class TeamPlayer < ApplicationRecord
  belongs_to :player
  belongs_to :team
  #validates :games_played,  numericality: { only_integer: true }
end
