class Player < ApplicationRecord
	has_many :team_player

	validates :document,  numericality: { only_integer: true }, uniqueness: true
	validates :contact_phone,  numericality: { only_integer: true }
	validates :age,  numericality: { only_integer: true }
	validates :document_type, inclusion: { in: %w(cc ti),
    	message: "cc o ti" }
	validates :gender, inclusion: { in: %w(masculino femenino),
    	message: "masculino o femenino" }
    validates :document, :first_name, :last_name, presence: true	
end
