require "test_helper"

feature "ViewBlog" do
  scenario "blogs show up on home page" do
    visit root_path
    page.must_have_content "#{blogs(:one).title}"
    page.must_have_content "#{blogs(:one).synopsis}"
  end

  scenario "blogs show up on blog index" do
    visit blogs_path
    page.must_have_content "#{blogs(:one).title}"
    page.must_have_content "#{blogs(:one).synopsis}"
  end

  scenario "individual blog shows up on its show page" do
    visit blog_path(blogs(:one).id)
    page.must_have_content "#{blogs(:one).body}"
    page.wont_have_content "#{blogs(:two).title}"
  end
end
