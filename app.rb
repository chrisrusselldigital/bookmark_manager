require 'sinatra/base'

class BookmarkManager < Sinatra::Base

  get '/' do
    bookmarks = [
      "https://hackertype.net",
      "https://github.com/makersacademy/course/blob/master/bookmark_manager/learning_objectives.md",
      "https://en.wikipedia.org/wiki/Separation_of_concerns"
    ]
    bookmarks.join
  end

  run! if app_file == $0

end
