class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :coach_name
      t.string :delegate
      t.string :captain
      t.string :uniform_color
      t.integer :goals_against
      t.integer :goals_in_favor
      t.integer :goals_difference
      t.integer :wins
      t.integer :loses
      t.integer :draws

      t.timestamps
    end
  end
end
