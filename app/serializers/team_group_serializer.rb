    class TeamGroupSerializer < ActiveModel::Serializer
  attributes :id,:group_id, :team_id, :points_in_group , :position_in_group, :group_wins, :group_loses, :group_draw

end
