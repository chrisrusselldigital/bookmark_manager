require 'pg'

class Bookmark
  def self.all
    connection = if ENV['ENVIRONMENT'] == 'test'
                   PG.connect(dbname: 'bookmark_manager_test')
                 else
                   PG.connect(dbname: 'bookmark_manager')
                 end

    result = connection.exec('SELECT * FROM bookmarks')
    result.map { |link| link['url'] }
  end

  def self.create(add_bookmark)
    connection = if ENV['ENVIRONMENT'] == 'test'
                   PG.connect(dbname: 'bookmark_manager_test')
                 else
                   PG.connect(dbname: 'bookmark_manager')
                 end
                 new_bookmark = connection.exec("INSERT INTO bookmarks (url) VALUES(#{new_url});")
  end
end
