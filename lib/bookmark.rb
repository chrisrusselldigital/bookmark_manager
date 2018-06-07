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

  def self.create(new_url)
    connection = if ENV['ENVIRONMENT'] == 'test'
                   PG.connect(dbname: 'bookmark_manager_test')
                 else
                   PG.connect(dbname: 'bookmark_manager')
                 end
                 connection.exec("INSERT INTO bookmarks (url) VALUES('#{new_url[:url]}')")
  end
end
