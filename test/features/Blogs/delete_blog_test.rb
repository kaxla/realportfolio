require "test_helper"

feature "CanDeleteBlogs" do
  scenario "admin can delete blogs" do
    sign_in
    within("div.sidebar-nav") do
      click_link "Blogs"
    end
    click_link("Show", :match => :first)
    click_link "Delete"
    click_button "Yes, I'm sure"
    page.text.must_include "List of Blogs"
    page.text.must_include "Blog successfully deleted"
    page.text.wont_include "second blog"
  end
end
