class CreateTeamMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :team_matches do |t|
      t.belongs_to :team, index: true
      t.belongs_to :match, index: true
      t.timestamps
    end
  end
end
