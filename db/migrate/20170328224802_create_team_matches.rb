class CreateTeamMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :team_matches do |t|
      t.integer :outcome
      t.integer :points_gained
      t.integer :goals
      t.references :match, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
