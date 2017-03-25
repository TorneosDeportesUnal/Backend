class TeamPlayer < ApplicationRecord
  belongs_to :player
  belongs_to :team
  validates :points_marked,  numericality: { only_integer: true }
end
