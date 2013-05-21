class CreateRates < ActiveRecord::Migration
  
  def self.up
      create_table :rates do |t|
        t.integer :gallery_id, :null => false
        t.float :stars, :null => false, :default => 0
        t.timestamps
      end

    end

    def self.down
      drop_table :rates
    end  
    
end