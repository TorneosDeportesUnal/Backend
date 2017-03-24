class TournamentPhase < ApplicationRecord
	has_many :groups
	belongs_to :tournament
end
