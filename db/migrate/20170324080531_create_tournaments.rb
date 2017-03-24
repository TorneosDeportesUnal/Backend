class CreateTournaments < ActiveRecord::Migration[5.0]
  def change
    create_table :tournaments do |t|
      t.date :begin_date
      t.date :end_date
      t.text :prize
      t.belongs_to :modality, index: true
      t.timestamps
    end
  end
end
