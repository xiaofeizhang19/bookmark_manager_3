require 'bookmark'
require 'database_helper'

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
      bookmark = Bookmark.add('Microsoft Homepage', 'http://www.microsoft.com')
      persisted_data = persisted_data(id: bookmark.id)
      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data.first['id']
      expect(bookmark.title).to eq 'Microsoft Homepage'
      expect(bookmark.url).to eq 'http://www.microsoft.com'
    end
  end

  describe '.delete' do
    it 'deletes a bookmark from the database' do
      bookmark = Bookmark.add('Microsoft Homepage', 'http://www.microsoft.com')
      Bookmark.delete(id: bookmark.id)
      expect(Bookmark.all.length).to eq 0
    end
  end
end
