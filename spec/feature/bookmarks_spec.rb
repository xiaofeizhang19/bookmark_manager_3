feature 'bookmarks' do
  scenario 'The bookmarks page shows bookmarks' do

    Bookmark.add('Makers Academy', 'http://www.makersacademy.com')
    Bookmark.add('Destroy all Software Homepage', 'http://www.destroyallsoftware.com')
    Bookmark.add('Google Homepage', 'http://www.google.com')

    visit('/bookmarks')

    expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')
    expect(page).to have_link('Destroy all Software Homepage', href: 'http://www.destroyallsoftware.com')
    expect(page).to have_link('Google Homepage', href: 'http://www.google.com')
  end
end
