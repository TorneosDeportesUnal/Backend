class CreatePrizes < ActiveRecord::Migration[5.0]
  def change
    create_table :prizes do |t|
      t.string :name
      t.string :description
      t.references :team, foreign_key: true
      t.references :tournament, foreign_key: true

      t.timestamps
    end
  end
end
