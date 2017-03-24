class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.string :date
      t.integer :result
      t.integer :id_team_winner
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
