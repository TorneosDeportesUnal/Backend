class TournamentSerializer < ActiveModel::Serializer
  attributes :id, :begin_date, :end_date, :gender, :discipline

end
