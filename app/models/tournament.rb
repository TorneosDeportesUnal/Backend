class Tournament < ApplicationRecord
	has_many :tournament_phases
	has_many :prizes
	belongs_to :modality	
	belongs_to :team
end
