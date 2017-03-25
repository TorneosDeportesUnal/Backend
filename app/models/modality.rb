class Modality < ApplicationRecord
  has_many :tournament
  has_many :team
  validates :gender, inclusion: { in: %w(masculino femenino),
    	message: "masculino o femenino" }
end
