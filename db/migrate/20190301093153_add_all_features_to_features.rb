class AddAllFeaturesToFeatures < ActiveRecord::Migration[5.2]
  def change
    add_column :features, :pause, :decimal
    add_column :features, :duration, :decimal
    add_column :features, :no_of_topics_changed, :decimal
    add_column :features, :empty_words, :decimal
    add_column :features, :variety_of_words, :decimal
  end
end
