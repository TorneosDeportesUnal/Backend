class TournamentPhaseSerializer < ActiveModel::Serializer
  attributes :id, :active, :phase_type, :phase_number
end
