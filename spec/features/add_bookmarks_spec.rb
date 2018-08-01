# User Story 2 - "Add new bookmarks"
# As a user
# So that I can add to my stored bookmarks
# I want to add more bookmarks

feature 'Adding bookmarks' do
  scenario 'User can add new bookmarks' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://testbookmark.com')
    click_button('Submit')
    expect(page).to have_content 'http://testbookmark.com'
  end

  scenario 'Bookmark must be a valid URL' do
    visit('/bookmarks/new')
    fill_in('url', with: 'is this a valid web address')
    click_button('Submit')

    expect(page).not_to have_content 'is this a valid web address'
    expect(page).to have_content 'You must submit a valid URL.'
  end
end
