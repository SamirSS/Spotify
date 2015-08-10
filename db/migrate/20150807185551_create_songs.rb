class CreateSongs < ActiveRecord::Migration
  
  def up
    create_table :songs do |t|
      t.string :song_name
      t.string :artist_name
      
      
      t.timestamps
    end
  end
  
  def down
    drop_table :songs
  end
  
end
