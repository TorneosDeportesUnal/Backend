class TournamentSerializer < ActiveModel::Serializer
  attributes :id, :begin_date, :end_date, :gender, :discipline

  has_many :tournament_phases
  has_many :teams  
end
