class CreateTeamPlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :team_players do |t|
      t.belongs_to :team, index: true
      t.belongs_to :player, index: true
      t.integer :games_played
      t.integer :points_marked
      t.integer :assists
      t.integer :faults

      t.timestamps
    end
  end
end
