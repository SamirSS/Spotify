class CreateSongs < ActiveRecord::Migration
  
  def up
    create_table :songs do |t|
      t.string :name
      t.string :song_link
      
      
      t.timestamps
    end
  end
  
  def down
    drop_table :songs
  end
  
end
