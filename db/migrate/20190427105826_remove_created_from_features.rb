class RemoveCreatedFromFeatures < ActiveRecord::Migration[5.2]
  def change
    remove_column :features, :created_at, :datetime
    remove_column :features, :updated_at, :datetime
  end
end
