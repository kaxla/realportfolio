require "test_helper"

feature "EditBlog" do
  scenario "admin can edit blogs" do
    sign_in
    within("div.sidebar-nav") do
      click_link "Blogs"
    end
    click_link("Edit", :match => :first)
    fill_in "Title", with: "cupcakes"
    click_button "Save"
    page.text.must_include "Blog successfully updated"
    page.text.must_include "cupcakes"
  end

  scenario "randos can't visit edit blog path" do
    visit edit_blog_path(blogs(:one).id)
    page.text.must_include "Hello, world! I'm a Full-stack Rails developer"
    page.text.wont_include "Editing blog"
  end
end
