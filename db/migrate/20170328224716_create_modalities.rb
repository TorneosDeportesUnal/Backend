class CreateModalities < ActiveRecord::Migration[5.0]
  def change
    create_table :modalities do |t|
      t.string :discipline
      t.string :gender
      t.references :tournament, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
