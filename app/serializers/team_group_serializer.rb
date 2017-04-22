class TeamGroupSerializer < ActiveModel::Serializer
  attributes :id,:group_id, :team_id, :position_in_group, :group_wins, :group_loses, :group_draw

end
