class TeamPlayerSerializer < ActiveModel::Serializer
  attributes :id, :team_id, :games_played, :points_marked, :assist, :yellow_cards, :red_cards, :white_cards
  belongs_to :player
  belongs_to :team

end
