require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      Bookmark.add('Makers Academy', 'http://www.makersacademy.com')
      Bookmark.add('Destroy all Software Homepage', 'http://www.destroyallsoftware.com')
      Bookmark.add('Google Homepage', 'http://www.google.com')

    bookmarks = Bookmark.all

    expect(bookmarks.length).to eq 3
    expect(bookmarks.first.title).to eq('Makers Academy')
    expect(bookmarks.first.url).to eq('http://www.makersacademy.com')
    end
  end

  describe '.add' do
    it 'adds a bookmark to the database' do
    Bookmark.add('Makers Academy', 'http://www.makersacademy.com')
    Bookmark.add('Destroy all Software Homepage', 'http://www.destroyallsoftware.com')
    Bookmark.add('Google Homepage', 'http://www.google.com')
    Bookmark.add('Microsoft Homepage', 'http://www.microsoft.com')
    bookmarks = Bookmark.all

    expect(bookmarks).to include('http://www.makersacademy.com')
    expect(bookmarks).to include('http://www.google.com')
    expect(bookmarks).to include('http://www.destroyallsoftware.com')
    expect(bookmarks).to include('http://www.XXX.com')
    end
  end
end
