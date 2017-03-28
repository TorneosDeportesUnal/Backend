class Tournament < ApplicationRecord
	has_many :tournament_phases
	belongs_to :modality	
end
