class AvailavilitySerializer < ActiveModel::Serializer
  attributes :id, :day_of_week, :begin_hour, :end_hour

  belongs_to :team
end
