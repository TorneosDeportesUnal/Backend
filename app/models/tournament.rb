class Tournament < ApplicationRecord
	has_many :tournament_phases
	has_many :teams
	belongs_to :modality
end
