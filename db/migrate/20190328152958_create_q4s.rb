class CreateQ4s < ActiveRecord::Migration[5.2]
  def change
    create_table :q4s do |t|
      t.string :file
      t.references :patient, foreign_key: true
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
