require 'bundler'
require 'pry'
Bundler.require
require './config/environment.rb'

class ApplicationController < Sinatra::Base
  
  get '/' do 
    erb :index
  end
  
end
