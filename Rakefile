require File.expand_path('../config/application', __FILE__)
require 'rubocop/rake_task'

Rails.application.load_tasks

Rails::TestTask.new("test:features" => "test:prepare") do |t|
  t.pattern = "test/features/**/*_test.rb"
  t.verbose = true
end

Rake::Task["test:run"].enhance ["test:features"]


RuboCop::RakeTask.new(:rubocop) do |task|
  task.fail_on_error = false
end

task default: [:test]
