class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.string :game_field_location
      t.datetime :date
      t.string :judges
      t.string :observation
      t.string :winner_team
      t.string :loser_team
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
