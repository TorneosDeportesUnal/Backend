class CreateGameFields < ActiveRecord::Migration[5.0]
  def change
    create_table :game_fields do |t|
      t.string :location
      t.string :discipline

      t.timestamps
    end
  end
end
