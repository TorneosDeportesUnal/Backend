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


  def self.players(page = 1, per_page = 10)
    includes(:team_players, :teams)
        .paginate(:page => page, :per_page => per_page)
  end

 	def self.players_by_id(id, page = 1, per_page = 10)
    	includes(:teams).find_by_id(id)  
  end

  def self.players_by_team_id(id_team)
    includes(:team_players).select("players.*").where(team_players:{team_id: id_team})
  end

  def self.players_by_teams(page = 1, per_page = 10)
    joins(:teams).select("players.*")
      .group("players.id").paginate(:page => page, :per_page => per_page)
  end

end
