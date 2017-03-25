class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.references :tournament_phase, foreign_key: true

      t.timestamps
    end
  end
end
