class AddPatientToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :patient, foreign_key: true
  end
end
