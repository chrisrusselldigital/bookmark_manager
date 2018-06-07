# model
require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/bookmark' do
    @bookmarks = Bookmark.all
    erb :index
  end

  get '/bookmark/new' do
    @add_bookmark = Bookmark.create
    erb :bookmark_new
  end

  post '/bookmark/new' do

    redirect '/bookmark/new'
  end

  run! if app_file == $PROGRAM_NAME
end
