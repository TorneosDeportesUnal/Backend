class TournamentPhaseSerializer < ActiveModel::Serializer
  attributes :id, :phase_type, :phase_number

  belongs_to :tournament
  has_many :groups  
end
