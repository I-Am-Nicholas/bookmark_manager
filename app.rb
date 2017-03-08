require 'sinatra/base'
require './lib/link'
require './lib/server'


class Bookmark < Sinatra::Base

  # get '/' do
  #  erb :bookmarkie
  # end

  get '/' do
    @links = Link.all
    erb :'/index'
  end

end
