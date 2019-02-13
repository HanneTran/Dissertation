class CreateQuestions < ActiveRecord::Migration[5.2]
  def self.up
    def change
      create_table :questions do |t|
        t.integer :question 
        t.integer :patientId, foreign_key: true

        t.timestamps
      end
      Question.create :question => 1
      Question.create :question => 2
      Question.create :question => 3
      Question.create :question => 4
      Question.create :question => 5
      Question.create :question => 6
      Question.create :question => 7
      Question.create :question => 8
      Question.create :question => 9
      Question.create :question => 10
      Question.create :question => 11
      Question.create :question => 12

    end
  end

  def self.down
    drop_table :questions
  end
end
