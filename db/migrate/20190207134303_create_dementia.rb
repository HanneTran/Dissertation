class CreateDementia < ActiveRecord::Migration[5.2]
  def self.up
    def change
      create_table :dementia do |t|
        t.string :type, primary_key: true
    
        t.timestamps

      end
    Dementium.create :type => "FMD"
    Dementium.create :type => "DPD"
    Dementium.create :type => "ND"
    Dementium.create :type => "VCI"
    Dementium.create :type => "FMD*"
    Dementium.create :type => "MCI"
    Dementium.create :type => "HC"
    Dementium.create :type => "UNK"
    end
  end

  def self.down
    drop_table :dementia
  end
end 
