class CreateGamefields < ActiveRecord::Migration[5.0]
  def change
    create_table :gamefields do |t|
      t.string :location
      t.string :discipline
      t.references :match, foreign_key: true

      t.timestamps
    end
  end
end
