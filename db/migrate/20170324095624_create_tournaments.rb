class CreateTournaments < ActiveRecord::Migration[5.0]
  def change
    create_table :tournaments do |t|
      t.string :begin_date
      t.string :end_date
      t.string :semester

      t.timestamps
    end
  end
end
