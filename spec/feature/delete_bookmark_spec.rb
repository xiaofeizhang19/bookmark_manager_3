feature 'delet bookmark' do
  scenario 'user deletes a bookmark from the database' do

  Bookmark.add('Makers Academy', 'http://www.makersacademy.com')
  Bookmark.add('Destroy all Software Homepage', 'http://www.destroyallsoftware.com')

  visit('/bookmarks')
  click_button 'Remove Bookmark'
  fill_in :title, with: 'Makers Academy'
  click_button 'Remove from Bookmarks'

  expect(page).to_not have_link('Makers Academy', href: 'http://www.makersacademy.com')
  expect(page).to have_link('Destroy all Software Homepage', href: 'http://www.destroyallsoftware.com')

  end
end
