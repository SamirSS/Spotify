require 'bundler'
require 'pry'
Bundler.require
require './config/environment.rb'
require './app/models/song.rb'
require './app/models/user.rb'
require './app/models/playlist.rb'
require './app/models/playlist_song.rb'

class ApplicationController < Sinatra::Base
  
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    
    enable :sessions
    set :session_secret, 'Spotify'
  end
  
  get '/' do 
    erb :index
  end
  
  post '/playlist' do
    @playlist = Playlist.new
    @playlist.playlist_name = params[:playlist_name]
    @playlist.save
    erb :index
  end
  
  post '/song' do
    @song = Song.new
    @song.song_name = params[:song_name]
    @song.save
    erb :index
  end
  
  get '/playlist/:id' do
    @p = Playlist.find(params[:id])
    @p.playlist_name
    erb :playlist
  end
  
  post '/add_song' do
    a = Playlist_song.new
    a.playlist_id = params[:playlist_name]
    a.song_name = params[:song_name]
    a.save
    redirect '/playlist/:id'
  end
  
end