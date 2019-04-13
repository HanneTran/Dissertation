class RenameAllQuestionsToAllqs < ActiveRecord::Migration[5.2]
  def change
    rename_table :allqs, :qs
  end
end
