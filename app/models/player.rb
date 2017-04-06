class Player < ApplicationRecord
	has_many :team_players
	has_many :teams, through: :team_players
	
	validates :document,  numericality: { only_integer: true }, uniqueness: true
	validates :contact_phone, numericality: { only_integer: true }
	validates :age,  numericality: { only_integer: true }
	validates :document_type, inclusion: { in: %w(cc ti),
    	message: "cc o ti" }
	validates :gender, inclusion: { in: %w(masculino femenino),
    	message: "masculino o femenino" }
    validates :document, :first_name, :last_name, presence: true	


 	def self.load_players()
    	includes(:teams)
  	end

 	def self.players_by_id(id)
    	includes(:teams).find_by_id(id)  
  	end

  def self.players_by_teams()
    joins(:teams).select("players.*")
      .group("players.id")
  end

end
