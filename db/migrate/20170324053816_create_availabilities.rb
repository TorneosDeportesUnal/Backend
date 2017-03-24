class CreateAvailabilities < ActiveRecord::Migration[5.0]
  def change
    create_table :availabilities do |t|
      t.belongs_to :team, index: true
      t.integer :day_of_week
      t.time :begin_hour
      t.time :end_hour

      t.timestamps
    end
  end
end
