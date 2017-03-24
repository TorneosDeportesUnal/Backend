class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.datetime :date
      t.integer :team_a_score
      t.integer :team_b_score
      t.belongs_to :game_field
      t.belongs_to :group, index: true

      t.timestamps
    end
  end
end
