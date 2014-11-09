require File.expand_path('../config/application', __FILE__)
require 'rubocop/rake_task'

Realportfolio::Application.load_tasks

RuboCop::RakeTask.new(:rubocop) do |task|
  task.fail_on_error = false
end

task default: [:test, :rubocop]
