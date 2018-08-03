def insert_test_bookmarks
  Bookmark.create(url: 'http://makersacademy.com', title: 'Makers')
  Bookmark.create(url: 'http://destroyallsoftware.com', title: 'Destroy')
  Bookmark.create(url: 'http://google.com', title: 'Google')
end