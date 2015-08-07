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
 post '/sign-up' do
    @user = User.new
    @user.username = params[:username]
    @user.save
    
    if @user
      session[:user_id] = @user
    end
    
    erb :index
  end
end
