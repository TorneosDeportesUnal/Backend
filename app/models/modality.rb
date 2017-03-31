class Modality < ApplicationRecord
  has_many :tournaments
  has_many :teams
  validates :gender, inclusion: { in: %w(masculino femenino),
    	message: "masculino o femenino" }


	def self.modality_by_id(id_tournament)
		joins(:tournaments).select("*")
	end
end
