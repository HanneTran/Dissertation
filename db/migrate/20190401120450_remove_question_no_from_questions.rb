class RemoveQuestionNoFromQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :question_no, :int
  end
end
