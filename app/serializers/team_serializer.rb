class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :active,:coach_name, :captain, :uniform_color, :wins, :loses, :draws

end