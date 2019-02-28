class RemovePatientIdFromNotes < ActiveRecord::Migration[5.2]
  def change
    remove_column :notes, :patientID, :integer
  end
end
