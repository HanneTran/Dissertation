class CreateDementia < ActiveRecord::Migration[5.2]
  def self.up
    def change
      create_table :dementia do |t|
        t.string :type, primary_key: true
    
        t.timestamps

      end
   
    end
  end

  def self.down
    drop_table :dementia
  end
end 
