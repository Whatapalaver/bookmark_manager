feature 'Viewing bookmarks' do
  scenario 'User can see bookmarks' do
    insert_test_bookmarks
    visit('/')


    expect(page).to have_content 'Makers'
    expect(page).to have_content 'Destroy'
    expect(page).to have_content 'Google'
  end
end
