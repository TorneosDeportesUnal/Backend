class Match < ApplicationRecord
  belongs_to :group
  has_many :match_team
end
