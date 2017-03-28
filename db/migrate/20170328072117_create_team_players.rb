class CreateTeamPlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :team_players do |t|
      t.integer :games_played
      t.integer :points_marked
      t.integer :assist
      t.integer :yellow_cards
      t.integer :red_cards
      t.integer :white_cards
      t.references :player, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
