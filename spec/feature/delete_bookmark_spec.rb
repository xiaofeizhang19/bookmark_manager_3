feature 'delete bookmark' do
  scenario 'user deletes a bookmark from the database' do

  Bookmark.add('Makers Academy', 'http://www.makersacademy.com')
  Bookmark.add('Destroy all Software Homepage', 'http://www.destroyallsoftware.com')

  visit('/bookmarks')
  first('.bookmark').click_button 'Delete'

  expect(page).not_to have_link('Makers Academy', href: 'http://www.makersacademy.com')
  expect(page).to have_link('Destroy all Software Homepage', href: 'http://www.destroyallsoftware.com')

  end
end
