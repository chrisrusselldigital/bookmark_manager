# model
require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/bookmark' do
    @bookmarks = Bookmark.all
    erb :index
  end

  get '/bookmark/new' do
    erb :"bookmark/new"
  end

  post '/bookmark/new' do
    @add_bookmark = Bookmark.create(params[:url])
    @add_bookmark = add_bookmark
    redirect '/bookmark/new'
  end

  run! if app_file == $PROGRAM_NAME
end
