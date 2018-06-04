feature "viewing bookmarks" do
  scenario "user can see bookmarks" do
    visit('/')
    expect(page).to have_content "https://hackertype.net"
    expect(page).to have_content "https://github.com/makersacademy/course/blob/master/bookmark_manager/learning_objectives.md"
    expect(page).to have_content "https://en.wikipedia.org/wiki/Separation_of_concerns"
  end
end
