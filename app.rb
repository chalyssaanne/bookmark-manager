require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/bookmarks'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  get '/bookmarks/new' do
    erb :"bookmarks/new"
  end  

  post '/bookmarks/added_bookmark' do
    @url = params[:url]
    @new_bookmark = Bookmark.add(@url)
    erb :"bookmarks/added_bookmark"
  end

  run! if app_file == $0
end