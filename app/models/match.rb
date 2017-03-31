class Match < ApplicationRecord
  belongs_to :group
  
  has_many :team_matches
  has_many :matches, through: :team_matches
end
