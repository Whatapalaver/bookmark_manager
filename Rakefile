task :test_database_setup do
  p "Cleaning database....."

  connection = PG.connect(dbname: 'bookmark_manager_test')
  # Clear the bookmarks table
  connection.exec('TRUNCATE bookmarks;') 
end

task :setup do
  p "Creating databases..."

  ['bookmark_manager', 'bookmark_manager_test'].each do |database|
    connection = PG.connect
    connection.exec("CREATE DATABASE #{ database };")
    connection = PG.connect(dbname: database)
    connection.exec("CREATE TABLE links(id SERIAL PRIMARY KEY, url VARCHAR(60), title VARCHAR(60));")
  end
end
