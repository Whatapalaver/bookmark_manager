require 'pg'

# This controls all the bookmarks
class Bookmark
  def self.all
    connection = if ENV['ENVIRONMENT'] == 'test'
                   PG.connect(dbname: 'bookmark_manager_test')
                 else
                   PG.connect(dbname: 'bookmark_manager')
                 end
    result = connection.exec('SELECT * FROM bookmarks')
    result.map { |bookmark| bookmark['url'] }
  end

  def self.create(options)
    connection = if ENV['ENVIRONMENT'] == 'test'
                   PG.connect(dbname: 'bookmark_manager_test')
                 else
                   PG.connect(dbname: 'bookmark_manager')
                 end

    return false unless url?(options[:url])
    connection.exec("INSERT INTO bookmarks (url) VALUES('#{options[:url]}')")
  end

  def self.url?(url)
    url =~ /\A#{URI.regexp(%w[http https])}\z/
  end
end
