class CreateTeamGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :team_groups do |t|
      t.integer :position_in_group
      t.integer :position_in_group
      t.integer :group_draw
      t.integer :group_wins
      t.integer :group_loses
      t.references :group, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
