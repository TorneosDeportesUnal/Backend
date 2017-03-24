class CreateTournamentPhases < ActiveRecord::Migration[5.0]
  def change
    create_table :tournament_phases do |t|
      t.string :phase_type
      t.belongs_to :tournament, index: true

      t.timestamps
    end
  end
end
