class AddPatientToFeatures < ActiveRecord::Migration[5.2]
  def change
    add_reference :features, :patient, foreign_key: true
  end
end
