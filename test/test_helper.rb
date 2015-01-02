ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"
require "minitest/rails/capybara"

class ActiveSupport::TestCase
    ActiveRecord::Migration.check_pending!

  fixtures :all

  def sign_in
    visit rails_admin_path
    fill_in "Email", with: admins(:kayla).email
    fill_in "Password", with: 'password'
    click_button "Log in"
  end
end
