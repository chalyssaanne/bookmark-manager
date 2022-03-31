feature 'Creating new bookmarks' do
  scenario 'a user creates a new bookmark' do
    visit('/bookmarks/new')
    fill_in('url', with: 'https://www.linkedin.com/')
    click_button('Submit')
    
    expect(page).to have_content 'https://www.linkedin.com/'
  end
end