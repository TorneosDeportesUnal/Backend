class CreateAvailavilities < ActiveRecord::Migration[5.0]
  def change
    create_table :availavilities do |t|
      t.string :day_of_week
      t.string :begin_hour
      t.string :end_hour
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
