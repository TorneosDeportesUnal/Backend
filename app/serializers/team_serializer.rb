class TeamSerializer < ActiveModel::Serializer
  attributes :id, :active,:coach_name, :captain, :uniform_color, :wins, :loses, :draws

end
