require "test_helper"

feature "CanSignIn" do
  scenario "admin can sign in" do
    sign_in
    page.text.must_include "Site Administration"
  end

  scenario "admin can sign out" do
    sign_in
    click_on "Log out"
    visit rails_admin_path
    page.text.wont_include "Site Administration"
  end
end
