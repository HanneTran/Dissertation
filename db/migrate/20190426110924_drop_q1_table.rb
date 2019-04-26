class DropQ1Table < ActiveRecord::Migration[5.2]
  def change
    drop_table :q1s
  end
end
