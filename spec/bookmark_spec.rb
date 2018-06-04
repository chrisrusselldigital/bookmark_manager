require 'bookmark'

describe Bookmark do
  it '#all' do
    # setup
    bookmarks = Bookmark.all
    # exercise
    # verify
    expect(bookmarks).to include("http://makersacademy.com")
    expect(bookmarks).to include("http://google.com")
    expect(bookmarks).to include("http://destroyallsoftware.com")
    end
end
