feature 'adding bookmarks' do
  scenario 'user can add bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    visit('/bookmark/new')
    fill_in('url', with: 'http://chris.com')
    click_button 'Submit'
    save_and_open_page
    expect(page).to have_content("http://chris.com")
  end
end
