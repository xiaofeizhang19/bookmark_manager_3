# frozen_string_literal: true

feature 'Homepage' do
  scenario 'display a welcome to the user' do
    visit('/')
    expect(page).to have_content 'Welcome to Bookmark Manager'
  end
end
