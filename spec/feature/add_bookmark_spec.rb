feature 'add bookmark' do
  scenario 'user adds bookmark to the database' do
  visit('/bookmarks')
  click_button 'Add Bookmark'
  fill_in :url, with: 'http://www.cosmopolitan.com'
  fill_in :title, with: 'Cosmopolitan'
  click_button 'Add to bookmarks'

  expect(page).to have_link('Cosmopolitan', href: 'http://www.cosmopolitan.com')
  end
end
