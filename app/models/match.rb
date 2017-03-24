class Match < ApplicationRecord
  belongs_to :group
  belongs_to :gamefield
  has_many :match_team
end
