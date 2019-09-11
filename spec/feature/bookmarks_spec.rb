feature 'bookmarks' do
  scenario 'The bookmarks page shows bookmarks' do

    Bookmark.add('Makers Academy', 'http://www.makersacademy.com')
    Bookmark.add('Destroy all Software Homepage', 'http://www.destroyallsoftware.com')
    Bookmark.add('Google Homepage', 'http://www.google.com')

    visit('/bookmarks')

    expect(page).to have_content 'Makers Academy'
    expect(page).to have_content 'Destroy all Software Homepage'
    expect(page).to have_content 'Google Homepage'
    expect(page).to have_link 'http://www.makersacademy.com'
    expect(page).to have_link 'http://www.google.com'
    expect(page).to have_link 'http://www.destroyallsoftware.com'
  end
end
