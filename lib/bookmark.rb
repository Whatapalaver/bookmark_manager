require 'pg'

# This controls all the bookmarks
class Bookmark
  attr_reader :id, :url

  def initialize(id, url)
    @id = id
    @url = url
  end

  def self.all
    connection = if ENV['ENVIRONMENT'] == 'test'
                   PG.connect(dbname: 'bookmark_manager_test')
                 else
                   PG.connect(dbname: 'bookmark_manager')
                 end
    result = connection.exec('SELECT * FROM bookmarks')
    result.map { |bookmark| Bookmark.new(bookmark['id'], bookmark['url']) }
  end

  def self.create(options)
    connection = if ENV['ENVIRONMENT'] == 'test'
                   PG.connect(dbname: 'bookmark_manager_test')
                 else
                   PG.connect(dbname: 'bookmark_manager')
                 end

    return false unless url?(options[:url])
    result = connection.exec("INSERT INTO bookmarks (url) VALUES('#{options[:url]}') RETURNING id, url")
    Bookmark.new(result.first['id'], result.first['url'])
  end

  def self.url?(url)
    url =~ /\A#{URI.regexp(%w[http https])}\z/
  end

  def ==(other)
    @id == other.id
  end

end
