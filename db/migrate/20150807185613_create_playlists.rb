class CreatePlaylists < ActiveRecord::Migration
  
  def up
    create_table :playlists do |t|
      t.string :playlist_name
      t.belongs_to :user_id
      
      
      t.timestamps
    end
  end
  
  def down
    drop_table :playlists
  end
  
end
