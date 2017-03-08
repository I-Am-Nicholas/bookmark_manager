require 'sinatra/base'
require './lib/link'
require './lib/server'


class Bookmark < Sinatra::Base

   get '/' do
    erb :index
   end

  get '/linky' do
    @links = Link.all
    erb :bookmarkie
  end

  post '/links/new' do
    Link.create(title: params[:Title], url: params[:URL])
    redirect '/linky'
  end

end
