feature 'add bookmark' do
  scenario 'user adds bookmark to the database' do

  Bookmark.add('http://www.makersacademy.com')
  Bookmark.add('http://www.destroyallsoftware.com')
  Bookmark.add('http://www.google.com')

  visit('/bookmarks')
  click_button 'Add Bookmark'
  fill_in :url, with: 'http://www.cosmopolitan.com'
  click_button 'Add to bookmarks'

  expect(page).to have_content 'http://www.cosmopolitan.com'
  expect(page).to have_content 'http://www.makersacademy.com'
  expect(page).to have_content 'http://www.google.com'
  expect(page).to have_content 'http://www.destroyallsoftware.com'
  end
end
