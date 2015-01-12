require "test_helper"

feature "EditProject" do
  scenario "admin can edit projects" do
    sign_in
    within("div.sidebar-nav") do
      click_link "Projects"
    end
    click_link("Edit", :match => :first)
    fill_in "Title", with: "cupcakes"
    click_button "Save"
    page.text.must_include "Project successfully updated"
    page.text.must_include "cupcakes"
  end

  scenario "randos can't visit edit project path" do
    visit edit_project_path(projects(:one).id)
    page.text.must_include "Hello, world! I'm a Full-stack Rails developer"
    page.text.wont_include "Editing project"
  end
end
