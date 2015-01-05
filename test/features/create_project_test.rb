require "test_helper"

feature "CreateProject" do
  scenario "admin can create project" do
    sign_in

    within("div.sidebar-nav") do
      click_link "Projects"
    end

    click_link "Add new"
    fill_in "Title", with: projects(:one).title
    fill_in "Description", with: projects(:one).description
    click_button "Save"
    page.text.must_include "Project successfully created"
  end

  scenario "randos can't access new project form" do
    visit new_project_path

  end
end
