class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.text :note
      t.integer :patientId, foreign_key: true
      t.timestamps
    end
  end
end
