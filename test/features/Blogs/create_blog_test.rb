require "test_helper"

feature "CreateBlog" do
  scenario "admin can create blog" do
    sign_in

    within("div.sidebar-nav") do
      click_link "Blogs"
    end

    click_link "Add new"
    fill_in "Title", with: blogs(:one).title
    fill_in "Synopsis", with: blogs(:one).synopsis
    fill_in "Body", with: blogs(:one).body
    click_button "Save"
    page.text.must_include "Blog successfully created"
  end

  scenario "randos can't access new blog form" do
    visit new_blog_path
    page.text.must_include "Hello, world! I'm a Full-stack Rails developer"
    page.text.wont_include "Create Blog"
  end

end
