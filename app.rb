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
    if Bookmark.create(params)
      flash[:success] = "Successfully added bookmark"
    else
      flash[:error] = "Please enter a valid URL"
    end
    redirect '/bookmarks'
  end

  post '/bookmarks/:id/delete' do
    Bookmark.delete(params['id'])
    redirect '/bookmarks'
  end

  run! if app_file == $PROGRAM_NAME
end
