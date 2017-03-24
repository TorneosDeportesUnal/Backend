class CreateTeamPlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :team_players do |t|
      t.integer :games_played
      t.integer :points_market
      t.integer :assist
      t.integer :faults
      t.references :player, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
