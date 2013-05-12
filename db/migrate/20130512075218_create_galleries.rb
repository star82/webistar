class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.attachment :image
      t.string  :name
      t.timestamps
    end
  end
end
