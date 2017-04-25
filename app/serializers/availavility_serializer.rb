class AvailavilitySerializer < ActiveModel::Serializer
  attributes :id, :team_id, :day_of_week, :begin_hour, :end_hour
end
