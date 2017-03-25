class CreateGroupTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :group_teams do |t|
      t.integer :position_in_group
      t.integer :wins
      t.integer :loses
      t.references :group, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
