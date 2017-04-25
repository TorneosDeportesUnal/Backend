class TournamentSerializer < ActiveModel::Serializer
  attributes :id, :name, :begin_date, :end_date, :gender, :discipline

end
