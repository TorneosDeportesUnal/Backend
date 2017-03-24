class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :coach_name
      t.belongs_to :tournament, index: true
      t.belongs_to :modality
      t.timestamps
    end
  end
end
