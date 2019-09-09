# frozen_string_literal: true

require 'sinatra/base'

# BookmarkManager inherits from Sinatra/Base
class BookmarkManager < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end
end
