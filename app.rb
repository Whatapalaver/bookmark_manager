require 'sinatra/base'
require 'sinatra/flash'
require './lib/bookmark'
require 'uri'

# This controller class
class BookmarkManager < Sinatra::Base
  enable :sessions
  register Sinatra::Flash

  get '/' do
    redirect '/bookmarks'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all 
    erb :index
  end

  get '/bookmarks/new' do
    erb :'bookmarks/new'
  end

  post '/bookmarks' do
    bookmark = Bookmark.create(url: params['url'], title: params['title'])
    flash[:notice] = 'You must submit a valid URL.' unless bookmark
    redirect '/bookmarks'
  end

  run! if app_file == $PROGRAM_NAME
end
