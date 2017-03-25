class TournamentPhase < ApplicationRecord
  belongs_to :tournament
  has_many :group
end
