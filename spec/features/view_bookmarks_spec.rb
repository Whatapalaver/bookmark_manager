feature 'Viewing bookmarks' do
  scenario 'User can see bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    #Add the test data
      connection.exec("INSERT INTO bookmarks (url) VALUES ('https://medium.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('https://pleated-jeans.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('https://www.sandimetz.com');")

    visit('/')

    expect(page).to have_content "https://medium.com"
    expect(page).to have_content "https://pleated-jeans.com"
    expect(page).to have_content "https://www.sandimetz.com"
  end
end
