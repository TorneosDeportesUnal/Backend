class TeamPlayerSerializer < ActiveModel::Serializer
  attributes :id, :team_id, :player_id, :games_played, :points_marked, :assist, :yellow_cards, :red_cards, :white_cards

end
