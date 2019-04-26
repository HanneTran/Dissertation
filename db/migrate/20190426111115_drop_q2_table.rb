class DropQ2Table < ActiveRecord::Migration[5.2]
  def change
    drop_table :q2s
    drop_table :q3s
    drop_table :q4s
    drop_table :q5s
    drop_table :q6s
    drop_table :q7s
    drop_table :q8s
    drop_table :q9s
    drop_table :q10s
    drop_table :q11s
    drop_table :q12s
  end
end
