class CreatePatients < ActiveRecord::Migration[5.2]
  
  def self.up
    create_table :patients do |t|
      t.string :name  
      t.string :dementia

      t.timestamps
    end
  end

  def self.down
    drop_table :patients
  end 
end
