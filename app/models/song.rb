class Song < ActiveRecord::Base
  has_many :playlist_songs
end