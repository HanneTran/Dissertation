class AddQuestionNoToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :question_no, :integer
  end
end
