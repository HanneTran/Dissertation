class RemoveColumnDementiaFromPatients < ActiveRecord::Migration[5.2]
  def change
    remove_column :patients, :dementia, :string
  end
end
