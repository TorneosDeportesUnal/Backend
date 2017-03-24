class Modality < ApplicationRecord
	has_many :tournaments
	has_many :teams
end
