# frozen_string_literal: true

require 'bundler/setup'
require 'bundler/gem_tasks'
require 'rake/testtask'
require 'rubocop/rake_task'
RuboCop::RakeTask.new

Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.libs << 'lib'
  t.test_files = FileList['test/**/*_test.rb']
end

desc 'Start an interactive shell.'
task :console do
  require 'irb'
  require 'irb/completion'
  require 'pp'

  $LOAD_PATH.unshift 'lib'

  require 'exchangerate_api'

  ARGV.clear
  IRB.start
end

task default: :test
