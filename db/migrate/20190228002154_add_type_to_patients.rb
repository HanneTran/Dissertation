class AddTypeToPatients < ActiveRecord::Migration[5.2]
  def change
    add_reference :patients, :type, foreign_key: true
  end
end
