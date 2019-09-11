# frozen_string_literal: true

require 'sinatra/base'
require './lib/bookmark.rb'

# BookmarkManager inherits from Sinatra/Base
class BookmarkManager < Sinatra::Base
  enable :sessions, :method_override

  get '/' do
    erb :index
  end

  post '/' do
    redirect '/bookmarks'
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

  delete '/bookmarks/:id' do
    Bookmark.delete(id: params[:id])
    redirect '/bookmarks'
    p params
  end

end
