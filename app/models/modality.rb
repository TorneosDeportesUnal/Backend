class Modality < ApplicationRecord
  has_many :tournaments
  has_many :teams
  validates :gender, inclusion: { in: %w(masculino femenino),
    	message: "masculino o femenino" }
end
