# Start of Pairing Challenge - Bookmark Manager

## Day1 - pairing with Dani

### User Story 1 - "Show a list of all bookmarks"

As a User
So that I can access saved websites
I want to see a list of bookmarks

*Domain Model*  
![Domain Model for User Story1](https://github.com/Whatapalaver/bookmark_manager/blob/master/images/User_story_1.jpg)

### User Story 2 - "Add new bookmarks"

As a user
So that I can add to my stored bookmarks
I want to add more bookmarks

### User Story 3 - "Delete bookmarks"

As a user
So that I can remove items from my stored bookmarks
I want to delete specific bookmarks

### User Story 4 - "Update bookmarks"

As a user
So that I can change my stored bookmarks
I want to edit specific bookmarks

### User Story 5 - "Comment on bookmarks"

As a user
So that I can annotate my stored bookmarks
I want to be able to add comments

### User Story 6 - "Tag bookmarks into categories"

As a user
So that I can easily sort my stored bookmarks
I want to be able to categorise with tags

### User Story 7 - "Filter bookmarks by tag"

As a user
So that I can easily find my stored bookmarks
I want to be able to filter by tags

### User Story 8 - "Users manage their bookmarks"

As a user
So that I can safely execute the above features
I want to be able to access a bookmark management page

Getting Started
===============
If you clone this app from the Initial Commit, you will have a ready-to-go application with RSpec, Sinatra, and Capybara installed. There's a small smoke test, too.

To get started with Bookmark Manager:

git clone https://github.com/Whatapalaver/bookmark_manager
cd bookmark_manager
bundle install
rake setup
rspec
This will give you the application, and set up two databases: bookmark_manager for the development environment, and bookmark_manager_test for the test environment.
