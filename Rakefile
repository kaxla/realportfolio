require File.expand_path('../config/application', __FILE__)
require 'rubocop/rake_task'
require 'rake/testtask'

Rails.application.load_tasks

Rake::TestTask.new("test:features" => "test:prepare") do |t|
  t.pattern = "test/features/**/*_test.rb"
  t.libs << "test" # here is the test_helper
  t.verbose = true
end

Rake::Task["test:run"].enhance ["test:features"]

RuboCop::RakeTask.new(:rubocop) do |task|
  task.fail_on_error = false
end
