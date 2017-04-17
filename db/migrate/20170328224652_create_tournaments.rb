class CreateTournaments < ActiveRecord::Migration[5.0]
  def change
    create_table :tournaments do |t|
      t.datetime :begin_date
      t.datetime :end_date
      t.string :gender
      t.string :discipline
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
