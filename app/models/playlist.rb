class Playlist  <  ActiveRecord::Base
  has_many :playlist_songs
  belongs_to :user
end