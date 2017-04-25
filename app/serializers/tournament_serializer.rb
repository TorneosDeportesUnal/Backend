class TournamentSerializer < ActiveModel::Serializer
  attributes :id,:active, :name, :begin_date, :end_date, :gender, :discipline

end
