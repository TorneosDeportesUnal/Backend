class TeamSerializer < ActiveModel::Serializer
  attributes :id, :coach_name, :captain, :uniform_color, :wins, :loses, :draws

end
