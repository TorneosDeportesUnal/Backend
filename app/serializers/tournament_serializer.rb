class TournamentSerializer < ActiveModel::Serializer
  attributes :id, :begin_date, :end_date

  has_many :tournament_phases
  has_many :prizes
  belongs_to :team  
end
