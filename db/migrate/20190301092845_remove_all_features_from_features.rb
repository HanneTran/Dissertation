class RemoveAllFeaturesFromFeatures < ActiveRecord::Migration[5.2]
  def change
    remove_column :features, :pause, :integer
    remove_column :features, :duration, :integer
    remove_column :features, :no_of_topics_changed, :integer
    remove_column :features, :empty_words, :integer
    remove_column :features, :variety_of_words, :integer
  end
end
