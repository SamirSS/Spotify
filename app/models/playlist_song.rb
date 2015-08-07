class Playlist_song < ActiveRecord::Base
  belongs_to :song
  belongs_to :playlist
  
end