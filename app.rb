# model
require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/bookmark' do
    @bookmarks = Bookmark.all
    erb :index
  end

  run! if app_file == $PROGRAM_NAME
end
