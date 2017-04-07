class TeamGroupSerializer < ActiveModel::Serializer
  attributes :id, :position_in_group, :group_wins, :group_loses, :group_draw

  belongs_to :group
  belongs_to :team  
end
