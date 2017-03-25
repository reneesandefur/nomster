class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.text :picture
      t.text :caption
      t.integer :place_id
      t.timestamps
      t.string :picture
    end
    
    add_index :photos, :place_id
  end
end
