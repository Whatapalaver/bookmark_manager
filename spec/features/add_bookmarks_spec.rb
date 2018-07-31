# User Story 2 - "Add new bookmarks"
# As a user
# So that I can add to my stored bookmarks
# I want to add more bookmarks

feature 'Adding bookmarks' do
  scenario 'User can add new bookmarks' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://testbookmark.com')
    click_button('Submit')
    expect(page).to have_content "http://testbookmark.com"
  end
end
