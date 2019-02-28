class AddPatientToNotes < ActiveRecord::Migration[5.2]
  def change
    add_reference :notes, :patient, foreign_key: true
  end
end
