class GroupSerializer < ActiveModel::Serializer
  attributes :id, :active,:name, :winners_number, :tournament_phase_id, :teams, :matches
end