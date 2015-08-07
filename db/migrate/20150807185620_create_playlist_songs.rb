class CreatePlaylistSongs < ActiveRecord::Migration
  
  def up
    create_table :playlist_songs do |t|
      t.belongs_to :song_id
      t.belongs_to :playlist_id
      
      
      t.timestamps
    end
  end
  
  def down
    drop_table :playlist_songs
  end
  
end
