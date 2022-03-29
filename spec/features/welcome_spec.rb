feature 'Welcome' do
  scenario 'User visits homepage' do
    visit ('/')
    expect(page).to have_content 'Welcome to Bookmark Manager!' 
  end
end