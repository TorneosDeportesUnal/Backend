class CreateTournamentPhases < ActiveRecord::Migration[5.0]
  def change
    create_table :tournament_phases do |t|
      t.string :phase_type
      t.references :tournament, foreign_key: true

      t.timestamps
    end
  end
end
