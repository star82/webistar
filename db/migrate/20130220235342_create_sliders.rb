class CreateSliders < ActiveRecord::Migration
  def change
    create_table :sliders do |t|
      t.text :description
      t.integer :priority,:null => false, :default =>  100
      t.boolean :activity,:null => false, :default =>  1
      t.attachment :image

      t.timestamps
    end
  end
end
