class CreateDementia < ActiveRecord::Migration[5.2]
  def change
    create_table :dementia do |t|
      t.string :type, primary_key: true
    
      t.timestamps
    end
  end
end
