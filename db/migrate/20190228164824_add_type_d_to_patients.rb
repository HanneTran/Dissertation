class AddTypeDToPatients < ActiveRecord::Migration[5.2]
  def change
    add_column :patients, :type, :string
  end
end
