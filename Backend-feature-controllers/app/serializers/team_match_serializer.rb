class TeamMatchSerializer < ActiveModel::Serializer
  attributes :id, :goals, :points_gained

  belongs_to :match
  belongs_to :team  
end
