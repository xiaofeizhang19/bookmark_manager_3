require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      Bookmark.add('http://www.makersacademy.com')
      Bookmark.add('http://www.destroyallsoftware.com')
      Bookmark.add('http://www.google.com')

    bookmarks = Bookmark.all

    expect(bookmarks).to include('http://www.makersacademy.com')
    expect(bookmarks).to include('http://www.google.com')
    expect(bookmarks).to include('http://www.destroyallsoftware.com')
    end
  end

  describe '.add' do
    it 'adds a bookmark to the database' do
    Bookmark.add('http://www.makersacademy.com')
    Bookmark.add('http://www.destroyallsoftware.com')
    Bookmark.add('http://www.google.com')
    Bookmark.add('http://www.XXX.com')
    bookmarks = Bookmark.all

    expect(bookmarks).to include('http://www.makersacademy.com')
    expect(bookmarks).to include('http://www.google.com')
    expect(bookmarks).to include('http://www.destroyallsoftware.com')
    expect(bookmarks).to include('http://www.XXX.com')
    end
  end
end
