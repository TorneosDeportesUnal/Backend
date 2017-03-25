class Tournament < ApplicationRecord
	has_many :tournament_phase
	belongs_to :modality
end
