class CreateAvailavilities < ActiveRecord::Migration[5.0]
  def change
    create_table :availavilities do |t|
      t.date :day_of_week
      t.datetime :begin_hour
      t.datetime :end_hour
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
