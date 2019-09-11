# frozen_string_literal: true

require 'sinatra/base'
require './lib/bookmark.rb'

# BookmarkManager inherits from Sinatra/Base
class BookmarkManager < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  get '/add' do
    erb :add
  end

  post '/confirmation' do
    Bookmark.add(params[:title], params[:url])
    redirect '/bookmarks'
  end

  get '/delete' do
    erb :delete
  end

  post '/delete_confirmation' do
    Bookmark.delete(params[:title])
    redirect '/bookmarks'
  end

end
