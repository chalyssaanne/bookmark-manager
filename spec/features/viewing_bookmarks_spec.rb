feature 'View bookmarks' do
  scenario 'User requests to view the bookmarks' do
    visit ('/')
    click_button 'View Bookmarks'
    expect(page).to have_content 'Here are your bookmarks!'
  end
end