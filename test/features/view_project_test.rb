require "test_helper"

feature "ViewBlog" do
  scenario "Projects show up on home page" do
    visit root_path
    page.must_have_content "#{projects(:one).title}"
  end

  scenario "projects show up on project index" do
    visit projects_path
    page.must_have_content "#{projects(:one).title}"
  end

  scenario "individual project shows up on its show page" do
    visit project_path(projects(:one).id)
    page.must_have_content "#{projects(:one).title}"
    page.must_have_content "#{projects(:one).description}"
  end
end
