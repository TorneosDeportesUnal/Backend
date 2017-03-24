class CreateTeamGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :team_groups do |t|
      t.belongs_to :team, index: true
      t.belongs_to :group, index: true
      t.integer :position_in_group
      t.integer :wins
      t.integer :loses

      t.timestamps
    end
  end
end
