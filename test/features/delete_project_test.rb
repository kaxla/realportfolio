require "test_helper"

feature "DeleteProject" do
  scenario "admin can delete projects" do
    sign_in
    within("div.sidebar-nav") do
      click_link "Projects"
    end
    click_link("Show", :match => :first)
    click_link "Delete"
    click_button "Yes, I'm sure"
    page.text.must_include "List of Projects"
    page.text.must_include "Project successfully deleted"
    page.text.wont_include "second project"
  end
end
