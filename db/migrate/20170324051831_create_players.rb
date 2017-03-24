class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.integer :document
      t.string :document_type
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :gender
      t.integer :age
      t.integer :contact_phone
      t.string :eps
      t.integer :contact_emergency_phone
      t.string :contact_emergency_name

      t.timestamps
    end
  end
end
