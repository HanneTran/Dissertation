class CreateFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :features do |t|
      t.integer :pause
      t.integer :duration
      t.integer :no_of_topics_changed
      t.integer :empty_words
      t.integer :variety_of_words
      t.timestamps
    end
  end
end
