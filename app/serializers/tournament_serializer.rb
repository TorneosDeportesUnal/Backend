class TournamentSerializer < ActiveModel::Serializer
  attributes :id, :begin_date, :end_date, :gender, :discipline

  has_many :tournament_phases
  belongs_to :team  
end
